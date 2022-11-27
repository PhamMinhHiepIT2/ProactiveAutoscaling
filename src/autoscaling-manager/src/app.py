import time
import math
from datetime import datetime

from collections import deque

from elasticsearch import Elasticsearch


from config import ES_HOST, ES_PORT, LAST_MINUTE_DATA_QUERY, POD_MAX_REQUEST, INSERT_QUERY, POSTGRES_DB, POSTGRES_HOST, POSTGRES_PASSWD, POSTGRES_PORT, POSTGRES_USER
from serve import grpc_infer
from k8s_controller import scale_deployment
from db import DBConnection

print("Initializing connection to Elasticsearch ...")
es_url = "http://{}:{}".format(ES_HOST, ES_PORT)
es = Elasticsearch(hosts=es_url)
print("Connected to ElasticSearch")

print("Initializing connection to Postgresql ...")

postgres = DBConnection(host=POSTGRES_HOST, port=POSTGRES_PORT,
                        user=POSTGRES_USER, passwd=POSTGRES_PASSWD, db=POSTGRES_DB)
print("Connected to Postgresql")
postgres.create_table()

last_10min_requests = deque()

while True:
    result = None
    try:
        result = es.search(body=LAST_MINUTE_DATA_QUERY)
    except Exception as e:
        print("Cannot fetch data at time {}".format(
            datetime.now().strftime("%Y-%m-%d %H:%M:%S")))
        # retry
        while not result:
            es = Elasticsearch(hosts=es_url)
            try:
                result = es.search(body=LAST_MINUTE_DATA_QUERY)
            except Exception as e:
                print("Retrying in 1s...")
                time.sleep(1)
    print("ES query result: {}".format(result))
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
            pred_request = grpc_infer(list(last_10min_requests))
            if pred_request < 0:
                pred_request = 0
            replicas = abs(math.ceil(pred_request // POD_MAX_REQUEST))
            record_db = (last_min_request, pred_request, replicas)
            print("Predicted request: {} | Scale to replicas = {}".format(
                pred_request, replicas))
            postgres.insert_one(INSERT_QUERY, record_db)
            scale_deployment(replicas=replicas)
        print("Last 10min data: {}".format(last_10min_requests))
    time.sleep(60)
