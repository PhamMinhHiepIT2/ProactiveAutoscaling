import pandas as pd
import numpy as np

from sklearn.model_selection import train_test_split
from keras.callbacks import EarlyStopping


from utils.utils import get_data, remove_noise_data
from data_processing.nasa_file_processing import aggregate_data
from config.config import AUG_NASA_DATA_FILE, JULY_NASA_DATA_FILE, SAVE_MODEL_DIR
from models.bi_lstm import BiLSTM


def merge_nasa_data():
    print("loading and aggregating NASA august data")
    df_aug = aggregate_data(AUG_NASA_DATA_FILE)
    print("loading and aggregating NASA july data")
    df_july = aggregate_data(JULY_NASA_DATA_FILE)
    print("Merging all data")
    df_nasa = pd.concat([df_july, df_aug], axis=0)
    return df_nasa


def process_train_test_data(df, test_size=0.25):
    df_list = df.to_list()
    x_batch, y_batch = get_data(df_list)
    X_train, X_test, y_train, y_test = train_test_split(
        x_batch, y_batch, test_size=test_size)

    # remove noise data
    X_train, y_train = remove_noise_data(X_train, y_train)
    X_test, y_test = remove_noise_data(X_test, y_test)

    # expand dims for train and test data
    # normalize the dataset
    X_train = np.expand_dims(X_train, 1)
    X_train.shape[1:]
    X_test = np.expand_dims(X_test, 1)
    X_test.shape[1:]
    y_train = np.expand_dims(y_train, 1)
    y_train.shape[1:]
    y_test = np.expand_dims(y_test, 1)
    y_test.shape[1:]
    return X_train, y_train, X_test, y_test


def start_training():
    df = merge_nasa_data()
    X_train, y_train, X_test, y_test = process_train_test_data(
        df, test_size=0.25)
    callback = EarlyStopping(monitor='loss', patience=5)
    bi_lstm = BiLSTM()
    bi_lstm_model = bi_lstm.build(units=32, input_shape=(1, 10), num_classes=1)
    bi_lstm.train(bi_lstm_model, X_train, y_train, X_test,
                  y_test, epochs=64, batch_size=32, callbacks=[callback, ])
    bi_lstm.save_model(bi_lstm_model, model_dir=SAVE_MODEL_DIR)
