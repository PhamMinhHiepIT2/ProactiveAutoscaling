import time
import math
import logging
import sys
from datetime import datetime

from collections import deque

from elasticsearch import Elasticsearch


from config import (
    LOG_LEVEL, ES_HOST, ES_PORT, LAST_MINUTE_DATA_QUERY,
    POD_MAX_REQUEST, POSTGRES_DB, POSTGRES_HOST,
    POSTGRES_PASSWD, POSTGRES_PORT, POSTGRES_USER, MAX_POD, MIN_POD, MULTISTEP, MODEL_TYPE
)
from serve import grpc_infer, grpc_infer_multistep
from k8s_controller import scale_deployment
from db import DBConnection


logger = logging.getLogger()
console_handler = logging.StreamHandler(sys.stdout)
logger.setLevel(LOG_LEVEL)
logger.addHandler(console_handler)

logger.info("Initializing connection to Elasticsearch ...")
es_url = "http://{}:{}".format(ES_HOST, ES_PORT)
es = Elasticsearch(hosts=[es_url], request_timeout=600)
logger.info("Connected to ElasticSearch")

logger.info("Initializing connection to Postgresql ...")

postgres = DBConnection(host=POSTGRES_HOST, port=POSTGRES_PORT,
                        user=POSTGRES_USER, passwd=POSTGRES_PASSWD, db=POSTGRES_DB)
logger.info("Connected to Postgresql")
table_name = "predict"
if MULTISTEP:
    table_name = f"{table_name}_{MODEL_TYPE}_multistep"
else:
    table_name = f"{table_name}_{MODEL_TYPE}"

# create postgres table
postgres.create_table(table_name=table_name)

# INSERT_QUERY = """INSERT INTO %s (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""


BILSTM_QUERY = """INSERT INTO predict_bilstm (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""
GRU_QUERY = """INSERT INTO predict_gru (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""
LSTM_QUERY = """INSERT INTO predict_lstm (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""
BILSTM_MULTISTEP_QUERY = """INSERT INTO predict_bilstm_multistep (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""

INSERT_QUERY = {
    "bilstm": BILSTM_QUERY,
    "gru": GRU_QUERY,
    "lstm": LSTM_QUERY,
    "bilstm_multistep": BILSTM_MULTISTEP_QUERY
}

last_10min_requests = deque()
save_predicted_req = 0
save_replicas = 0
expected_replicas = 0
flag = 0

while True:
    result = None
    try:
        result = es.search(body=LAST_MINUTE_DATA_QUERY)
    except Exception as e:
        logger.error("Cannot fetch data at time {}".format(
            datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        # retry
        while not result:
            es = Elasticsearch(hosts=es_url)
            try:
                result = es.search(body=LAST_MINUTE_DATA_QUERY)
            except Exception as e:
                logger.warn("Retrying in 1s...")
                time.sleep(1)
    logger.info("ES query result: {}".format(result))
    if result:
        data = result["aggregations"]["group_by_time"]["buckets"]
        if len(data) > 0:
            last_min_request = float(data[-1]["doc_count"])
        else:
            last_min_request = 0.0
        if len(last_10min_requests) < 10:
            last_10min_requests.append(last_min_request)
        else:
            last_10min_requests.popleft()
            last_10min_requests.append(last_min_request)
            pred_request = 0
            if MULTISTEP:
                pred_request = grpc_infer_multistep(list(last_10min_requests))
            else:
                pred_request = grpc_infer(list(last_10min_requests))
            if pred_request < 0:
                pred_request = 0
            replicas = abs(math.ceil(pred_request / POD_MAX_REQUEST))
            if replicas < MIN_POD:
                replicas = MIN_POD
            elif replicas > MAX_POD:
                replicas = MAX_POD
            record_db = (save_predicted_req,
                         int(last_min_request),
                         save_replicas,
                         expected_replicas,
                         POD_MAX_REQUEST)
            save_replicas = replicas
            save_predicted_req = pred_request
            expected_replicas = abs(
                math.ceil(int(last_min_request) / POD_MAX_REQUEST))
            if expected_replicas < MIN_POD:
                expected_replicas = MIN_POD
            elif expected_replicas > MAX_POD:
                expected_replicas = MAX_POD
            # skip to add first row
            if flag == 0:
                logger.info("Skipping to add first row!!!")
                flag += 1
                continue
            logger.info("Predicted request: {} | Scale to replicas = {}".format(
                pred_request, replicas))
            postgres.insert_one(INSERT_QUERY[MODEL_TYPE], record_db)
            scale_deployment(replicas=replicas)
        logger.info("Last 10min data: {}".format(last_10min_requests))
    time.sleep(60)
