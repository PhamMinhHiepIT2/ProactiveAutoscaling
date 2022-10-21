HOST = '10.124.69.3'
PORT = 30920
ES_INDEX_PATTERN = "logstash"

AUTO_SCALER_HOST = ""
AUTO_SCALER_PORT = ""

KUBECONFIG_FILE = "kubeconfig"
DEPLOYMENT_NAME = "deployment"
K8S_NAMESPACE = "chatbot"

LAST_MINUTE_DATA_QUERY = {
    "query": {
        "bool": {
            "must": {
                "regexp": {
                    "log": {
                        "value": ".*v1.*"
                    }
                }
            },
            "filter": {
                "range": {
                    "time": {
                        "gte": "2022-10-04T05:07:04.976915837Z",
                        "lte": "2022-10-10T06:07:04.976915837Z"
                    }
                }
            }
        }
    },
    "size": 0,
    "aggs": {
        "group_by_time": {
            "date_histogram": {
                "field": "time",
                "interval": "day"
            }
        }
    }
}
