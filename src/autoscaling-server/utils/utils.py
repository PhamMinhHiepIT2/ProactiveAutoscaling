from datetime import datetime
import numpy as np
from sklearn.model_selection import train_test_split


from config.config import DIFF_REQUEST


def datetime_format(datetime_str: str):
    """
    Format datetime in string format to correct format
    Expect format: 
        yyyy-MM-dd HH:mm:SS

    Args:
        datetime_str (str): datetime in string format which get from data file (ex: 01/Aug/1995:00:00:07)
    """
    date_formatted = datetime.strptime(datetime_str, "%d/%b/%Y:%H:%M:%S")
    return date_formatted


def convert_series_to_list(series_data):
    return series_data.to_list()


def get_data(df_list: list):
    x_batch, y_batch = [], []
    for i in range(len(df_list) - 10):
        x_batch.append(df_list[i:i+10])
        y_batch.append(df_list[i+10])
    return np.array(x_batch).astype("float32"), np.array(y_batch).astype("float32")


def split_train_test_data(series_data):
    """
    Convert Series data to numpy array then split into testing set and training set

    Args:
        series_data (Series): Series data

    """
    df_list = convert_series_to_list(series_data)
    x_batch, y_batch = get_data(df_list)
    X_train, X_test, y_train, y_test = train_test_split(
        x_batch, y_batch, test_size=0.3)
    print("Xtrain shape: {}, y_train shape {}".format(
        X_train.shape, y_train.shape))
    return X_train, y_train, X_test, y_test


def verify_noise_data(data: list):
    """
    Check noisy data

    Args:
        data (list)

    Returns:
        int: 1 if noisy data else 0
    """
    for i in range(len(data) - 1):
        if data[i+1] - data[i] > DIFF_REQUEST:
            return 1
    return 0


def get_noise_index(x):
    """
    Get index of all noisy data

    Args:
        x (list): X_train, X_test, ...

    Returns:
        list: list indexes of noisy data
    """
    noise_indexes = []
    for i in range(len(x)):
        if verify_noise_data(x[i]):
            noise_indexes.append(i)
    noise_indexes = sorted(noise_indexes)
    return noise_indexes


def get_y_noise_index(y, multisteps=1):
    """
    Get index of noisy data of y label (y_train, y_test)

    Args:
        y (list): y_train, y_test
        multisteps (int, optional): if y label contains multiple values for each record. Defaults to 1.

    Raises:
        Exception: when multisteps less than 1

    Returns:
        list: list indexes of noisy data
    """
    if multisteps < 1:
        raise Exception(
            'multisteps value must be greater than 1. Current value: {}'.format(multisteps))
    if multisteps > 1:
        return get_noise_index(y)
    y = np.squeeze(y)
    noise_indexes = []
    for i in range(len(y)-1):
        if y[i+1] - y[i] > DIFF_REQUEST:
            noise_indexes.append(i+1)
    return noise_indexes


def remove_noise_data(x, y, multisteps=1):
    """
    Remove all noisy data

    Args:
        x (list): X_train, X_test
        y (list): y_train, y_test
        multisteps (int, optional):  Defaults to 1.

    Raises:
        Exception: when multisteps less than 1

    Returns:
        x, y with no noisy data
    """
    print("X shape: {}".format(x.shape))
    print("Y shape: {}".format(y.shape))
    y_noise_indexes = get_y_noise_index(y, multisteps=multisteps)
    x_noise_indexes = get_noise_index(x)
    noise_indexes = set(x_noise_indexes + y_noise_indexes)
    print("Num noise indexes: {}".format(len(noise_indexes)))
    if len(x) != len(y):
        raise Exception('X and Y must be same length!!!!')
    for i in noise_indexes:
        if i > len(x):
            continue
        x = np.delete(x, i, 0)
        y = np.delete(y, i, 0)

    print("New X shape: {}".format(x.shape))
    print("New Y shape: {}".format(y.shape))

    return x, y
