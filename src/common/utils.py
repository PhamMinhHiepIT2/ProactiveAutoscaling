import numpy as np
from sklearn.model_selection import train_test_split


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
    X_train, y_train, X_test, y_test = train_test_split(
        x_batch, y_batch, test_size=0.3)
    return X_train, y_train, X_test, y_test
