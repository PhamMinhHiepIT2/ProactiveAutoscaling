import os

LOG_LEVEL = os.getenv("LOG_LEVEL", "INFO")

ES_HOST = os.getenv('ES_HOST', '10.124.69.3')
ES_PORT = os.getenv('ES_PORT', '30920')
ES_INDEX_PATTERN = os.getenv("ES_INDEX_PATTERN", "autoscaler")

AUTO_SCALER_HOST = os.getenv(
    "AUTO_SCALER_HOST", "localhost")
AUTO_SCALER_PORT = os.getenv("AUTO_SCALER_PORT", "8500")

KUBECONFIG_FILE = os.getenv(
    "KUBECONFIG_FILE", "/home/hieppm/.kube/local_config_1")
DEPLOYMENT_NAME = os.getenv("DEPLOYMENT_NAME", "content-platform-backend")
K8S_NAMESPACE = os.getenv("K8S_NAMESPACE", "chatbot")

POD_MAX_REQUEST = int(os.getenv("POD_MAX_REQUEST", 6000))
MIN_POD = int(os.getenv("MIN_POD", 1))
MAX_POD = int(os.getenv("MAX_POD", 5))

POSTGRES_HOST = os.getenv("POSTGRES_HOST", "10.124.69.166")
POSTGRES_PORT = os.getenv("POSTGRES_PORT", "5432")
POSTGRES_USER = os.getenv("POSTGRES_USER", "bdiadmin")
POSTGRES_PASSWD = os.getenv("POSTGRES_PASSWD", "vinbdi@2022@#")
POSTGRES_DB = os.getenv("POSTGRES_DB", "scaler")

MODEL_TYPE = os.getenv('MODEL_TYPE', 'bilstm')
MULTISTEP = bool(os.getenv('MULTISTEP', False))

INSERT_QUERY = """INSERT INTO PREDICTED (PREDICTED_REQUEST, ACTUAL_REQUEST, PREDICTED_REPLICAS, ACTUAL_REPLICAS, POD_BASE_REQUEST) VALUES (%s,%s,%s,%s,%s)"""

LAST_MINUTE_DATA_QUERY = {
    "query": {
        "bool": {
            "must": {
                "regexp": {
                    "api_prefix.keyword": {
                        "value": ".*internal_api.*"
                    }
                }
            },
            "filter": {
                "range": {
                    "time": {
                        "gte": "now-3m",
                        "lte": "now"
                    }
                }
            }
        }
    },
    "size": 1,
    "aggs": {
        "group_by_time": {
            "date_histogram": {
                "field": "time",
                "interval": "minute"
            }
        }
    }
}
