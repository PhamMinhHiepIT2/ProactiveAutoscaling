HOST = '10.124.69.3'
PORT = 30920
ES_INDEX_PATTERN = "autoscaler"

AUTO_SCALER_HOST = ""
AUTO_SCALER_PORT = ""

KUBECONFIG_FILE = "/home/hieppm/.kube/local_config_1"
DEPLOYMENT_NAME = "content-platform-backend"
K8S_NAMESPACE = "chatbot"

POD_MAX_REQUEST = 300
MIN_POD = 1
MAX_POD = 5

LAST_MINUTE_DATA_QUERY = {
    "query": {
        "bool": {
            "must": {
                "regexp": {
                    "api_prefix": {
                        "value": ".*internal_api.*"
                    }
                }
            },
            "filter": {
                "range": {
                    "time": {
                        "gte": "now-5m",
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
