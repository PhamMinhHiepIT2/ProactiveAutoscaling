from elasticsearch import Elasticsearch
from elasticsearch.helpers import scan


from constants import HOST, PORT, ES_INDEX_PATTERN
es_url = "http://{}:{}".format(HOST, PORT)
es = Elasticsearch(hosts=es_url)


# query: The elasticsearch query.
query = {
    "query": {
        "bool": {
            "filter": {
                "term": {
                    "api_prefix": "/api/v1"
                }
            }
        }
    },
    "fields": ["api_prefix"],
    "_source": False,
    "aggs": {
        "per_1minute": {
            "date_histogram": {
                "field": "lst_at",
                "fixed_interval": "1m"
            }
        }
    }
}

# print(dir(es))
# print(dir(es.indices))


def get_elasticsearch_indices():
    """
    Get all indices of elasticsearch
    """
    return list(es.indices.get_alias(index="logstash-*"))


def scan_es_data(es_index, query):
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
               scroll='10m',
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


def get_product_id_and_name(query=query):
    """
    Get all product ids and product names from elasticsearch data

    Returns:
        List mapping id and name of product
    """
    res = []
    es_data = get_data_from_elastic(query)
    for hit in es_data:
        try:
            # get product name and lowercase it
            product_name = str(hit['fields']['name'][0])
            product_name = product_name.lower().split(" ")
            product_id = hit['fields']['id'][0]
            res.append((product_id, product_name))
        except Exception as e:
            print(e)
    return res


if __name__ == "__main__":
    indices = get_elasticsearch_indices()
    print(indices)
    get_data_from_elastic(query=query)
    # data = scan_es_data('logstash-2022.10.10', query)
