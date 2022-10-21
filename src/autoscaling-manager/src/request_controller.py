from urllib3.util import Retry
from urllib3 import PoolManager


from config import AUTO_SCALER_HOST, AUTO_SCALER_PORT

AUTO_SCALER_ENDPOINT = "http://{}:{}".format(
    AUTO_SCALER_HOST, AUTO_SCALER_PORT)


def get_next_number_requests(server: str, data):
    """
    Send data to Autoscaling server to get number requests in next minute

    Args:
        server (str): Autoscaling server url
        data (json): number requests of last 10 minutes

    Returns:
        Number request in next minute (expect data type: int) 
    """
    retries = Retry(total=5, connect=5, read=2, redirect=5)
    http_pool = PoolManager(retries=retries)
    res = http_pool.request(method="POST", url=server, body=data)
    print(res)
    return res
