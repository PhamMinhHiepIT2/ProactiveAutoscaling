from datetime import date

from elasticsearch import Elasticsearch
from elasticsearch.helpers import scan


from config import HOST, PORT, ES_INDEX_PATTERN


es_url = "http://{}:{}".format(HOST, PORT)
es = Elasticsearch(hosts=es_url)


def get_elasticsearch_indices(index_pattern: str):
    """
    Get all indices of elasticsearch
    """
    return list(es.indices.get_alias(index=index_pattern))


def scan_es_data(es_index, query, scroll="10m"):
    """
    Scan data from a index

    Args:
        es_index ([str]): elasticsearch index name
        query ([dict]): elasticsearch query

    Returns:
        [List]: data from elasticsearch index
    """
    # Scan function to get all the data.
    rel = scan(client=es,
               query=query,
               scroll=scroll,
               index=es_index,
               raise_on_error=True,
               preserve_order=False,
               clear_scroll=True)

    # Keep response in a list.
    result = list(rel)
    return result


def get_data_from_elastic(query):
    """
    Get data from index pattern

    Args:
        query : elasticsearch query

    Returns:
        [List]: Data from elasticsearch index pattern
    """
    data = []
    es_indices = get_elasticsearch_indices()
    for index in es_indices:
        if ES_INDEX_PATTERN in index:
            index_data = scan_es_data(index, query)
            print("Index data: {}".format(index_data))
            data.extend(index_data)
    return data


def get_current_index(index_pattern=ES_INDEX_PATTERN):
    """
    Get current elasticsearch index by date

    Returns:
       Index name
    """
    today = date.today()
    today_str = date.strftime(today, "%Y.%m.%d")
    return "-".join([index_pattern, today_str])
