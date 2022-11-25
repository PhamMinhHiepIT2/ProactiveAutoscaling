import time
from datetime import datetime

from collections import deque

from elasticsearch import Elasticsearch


from config import HOST, PORT, LAST_MINUTE_DATA_QUERY, POD_MAX_REQUEST
from serve import grpc_infer
from k8s_controller import scale_deployment


es_url = "http://{}:{}".format(HOST, PORT)
es = Elasticsearch(hosts=es_url)
print("Connected to ElasticSearch")

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
            last_min_request = data[-1]["doc_count"]
        else:
            last_min_request = 0
        if len(last_10min_requests) < 10:
            last_10min_requests.append(last_min_request)
        else:
            last_10min_requests.popleft()
            last_10min_requests.append(last_min_request)
            pred_request = grpc_infer(list(last_10min_requests))
            replicas = round(pred_request // POD_MAX_REQUEST)
            print("Predicted request: {} | Scale to replicas = {}".format(
                pred_request, replicas))
        print("Last 10min data: {}".format(last_10min_requests))
    time.sleep(60)
