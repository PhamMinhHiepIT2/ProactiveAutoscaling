import re
import pandas as pd

from utils.utils import datetime_format


def line_format(line: str):
    """
    Format each line of data
    Compatible with NASA access log data

    Line example:
        uplherc.upl.com - - [01/Aug/1995:00:00:07 -0400] "GET / HTTP/1.0" 304 0

    Args:
        line (str): line in file data
    """
    pattern = re.compile(
        r"""(?P<client_url>.*?)\s*\-\s*\-\s*\[(?P<datetime>.*?)\s(?P<timezone>.*?)\]\s*\"(?P<request>.*?)\"\s(?P<statuscode>.*?)\s(?P<byte_num>.*?)$""", re.VERBOSE)

    m = pattern.match(line)
    client_url = m.group("client_url")
    dt = datetime_format(m.group("datetime"))
    timezone = m.group("timezone")
    request = m.group("request")
    status_code = m.group("statuscode")
    byte_num = m.group("byte_num")
    line_formatted = (client_url, dt, timezone, request, status_code, byte_num)
    return line_formatted


def get_dataframe(data_file: str):
    """
    Convert all data of file to dataframe

    Args:
        data_file (str): path to data file
    """
    data_formatted = []
    with open(data_file, mode="r", encoding="utf8", errors='ignore') as file:
        data = file.readlines()
        print("Formatting file {}".format(data_file))
        for line in data:
            try:
                line_formatted = line_format(line)
                data_formatted.append(line_formatted)
            except Exception as e:
                print("Line error: {}".format(line))
                print("Error cause: {}".format(e))

    df = pd.DataFrame(data_formatted, columns=[
                      "client_url", "date_time", "timezone", "request", "status_code", "payload_length"])
    print("Complete formatting file {}".format(data_file))
    return df


def aggregate_data(data_file: str):
    """
    Aggregate number requests per minute

    Args:
        data_file (str): path to data file
    """
    print("Aggregating data of file {}".format(data_file))
    df = get_dataframe(data_file)
    df_aggregate = df.resample('1min', on='date_time').client_url.count()
    print("Complete aggregate data of file {}".format(data_file))
    return df_aggregate


def merge_data(files: list):
    """
    Concatenate all data

    Args:
        files (list): list files path

    Raises:
        Exception: General exception when no input data file

    Returns:
        Series: all data concatenated
    """
    if len(files) < 1:
        print("There is no data file")
        raise Exception("No input data file")
    print("Merged file {}".format(files[0]))
    df = aggregate_data(files[0])
    for file in files:
        data = aggregate_data(file)
        pd.concat([df, data], axis=0)
        print("Merged file {}".format(file))
    return df
