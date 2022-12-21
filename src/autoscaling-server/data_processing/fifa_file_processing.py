

import os
import gzip

import pandas as pd
import numpy as np

METHODS = [
    "GET",
    "HEAD",
    "POST",
    "PUT",
    "DELETE",
    "TRACE",
    "OPTIONS",
    "CONNECT",
    "OTHER_METHODS",
]

TYPES = [
    "HTML",
    "IMAGE",
    "AUDIO",
    "VIDEO",
    "JAVA",
    "FORMATTED",
    "DYNAMIC",
    "TEXT",
    "COMPRESSED",
    "PROGRAMS",
    "DIRECTORY",
    "ICL",
    "OTHER_TYPES",
    "NUM_OF_FILETYPES",
]

STATUS = [
    "SC_100",
    "SC_101",
    "SC_200",
    "SC_201",
    "SC_202",
    "SC_203",
    "SC_204",
    "SC_205",
    "SC_206",
    "SC_300",
    "SC_301",
    "SC_302",
    "SC_303",
    "SC_304",
    "SC_305",
    "SC_400",
    "SC_401",
    "SC_402",
    "SC_403",
    "SC_404",
    "SC_405",
    "SC_406",
    "SC_407",
    "SC_408",
    "SC_409",
    "SC_410",
    "SC_411",
    "SC_412",
    "SC_413",
    "SC_414",
    "SC_415",
    "SC_500",
    "SC_501",
    "SC_502",
    "SC_503",
    "SC_504",
    "SC_505",
    "OTHER_CODES",
]

REGIONS = ["SantaClara", "Plano", "Herndon", "Paris"]


def request_type():
    """
struct request {
 uint32_t timestamp;
 uint32_t clientID;
 uint32_t objectID;
 uint32_t size;
 uint8_t method;
 uint8_t status;
 uint8_t type;
 uint8_t server;
};
    """
    def i(name): return (name, '>u4')
    def b(name): return (name, 'b')
    return np.dtype([i('timestamp'),
                     i('client_id'),
                     i('object_id'),
                     i('size'),
                     b('method'),
                     b('status'),
                     b('type'),
                     b('server')])


def read_log(path):
    buf = gzip.open(path, "r").read()
    df = pd.DataFrame(np.frombuffer(buf, dtype=request_type()))
    timestamp = df.timestamp.values.astype(np.int64)

    from_codes = pd.Categorical.from_codes
    fields = dict(timestamp=timestamp.view("datetime64[s]"),
                  client_id=df.client_id,
                  object_id=df.object_id,
                  size=df.size,
                  method=from_codes(df.method, categories=METHODS),
                  status=from_codes(df.status & 0x3f, categories=STATUS),
                  type=from_codes(df.type, categories=TYPES),
                  region=from_codes(df.server.apply(
                      lambda x: x >> 5), categories=REGIONS),
                  server=df.server & 0x1F)
    return pd.DataFrame(fields)


def resample(df, interval='1min', on='timestamp'):
    return df.resample(interval, on=on).client_id.count()


def fifa_aggregate_data(data_folder: str, interval='1min', load_percent=1):
    """
    Aggregate number requests per minute

    Args:
        data_folder (DataFrame): folder path that contains data
    """
    list_files = os.listdir(data_folder)

    BATCH = 5

    zip_files = []
    for file in list_files:
        if file.endswith('.gz'):
            zip_files.append(file)

    zip_files.sort()

    num_zip_file = len(zip_files)
    logs = []
    count = 0
    df_batch = []
    df_logs = None

    for i in range(num_zip_file):
        file_path = os.path.join(data_folder, zip_files[i])
        df_log = read_log(file_path)
        print(file_path)
        logs.append(df_log)
        count += 1
        if count == BATCH:
            df_logs = pd.concat(logs)
            df = resample(df_logs)
            df_batch.append(df)
            count = 0
            logs = []

    df = resample(df_logs)

    df_batch.append(df)

    df_fifa = pd.concat([df_batch[0], df_batch[1]], axis=0)
    for i in range(2, len(df_batch)):
        df_fifa = pd.concat([df_fifa, df_batch[i]], axis=0)
    df_fifa = pd.DataFrame(df_fifa)
    df_fifa.to_csv(os.path.join(data_folder, "fifa.csv"),
                   sep='\t', columns=['client_id'], index=False)
    return df_fifa
