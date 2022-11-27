import os

ES_HOST = os.getenv('ES_HOST', '10.124.69.3')
ES_PORT = os.getenv('ES_PORT', '30920')
ES_INDEX_PATTERN = os.getenv("ES_INDEX_PATTERN", "autoscaler")

AUTO_SCALER_HOST = os.getenv(
    "AUTO_SCALER_HOST", "scaler-service.monitoring")
AUTO_SCALER_PORT = os.getenv("AUTO_SCALER_PORT", "8500")

KUBECONFIG_FILE = os.getenv(
    "KUBECONFIG_FILE", "/home/hieppm/.kube/local_config_1")
DEPLOYMENT_NAME = os.getenv("DEPLOYMENT_NAME", "content-platform-backend")
K8S_NAMESPACE = os.getenv("K8S_NAMESPACE", "chatbot")

POD_MAX_REQUEST = os.getenv("POD_MAX_REQUEST", 6000)
MIN_POD = os.getenv("MIN_POD", 1)
MAX_POD = os.getenv("MAX_POD", 5)

POSTGRES_HOST = os.getenv("POSTGRES_HOST", "127.0.0.1")
POSTGRES_PORT = os.getenv("POSTGRES_PORT", "15433")
POSTGRES_USER = os.getenv("POSTGRES_USER", "postgres")
POSTGRES_PASSWD = os.getenv("POSTGRES_PASSWD", "admin")
POSTGRES_DB = os.getenv("POSTGRES_DB", "scaler")

INSERT_QUERY = """INSERT INTO PREDICTED (LAST_REQUEST, PREDICTED_REQUEST, REPLICAS) VALUES (%s,%s)"""

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
