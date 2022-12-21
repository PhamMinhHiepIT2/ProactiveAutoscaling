import pandas as pd
import numpy as np
import argparse
import os

from sklearn.model_selection import train_test_split
from keras.callbacks import EarlyStopping


from utils.utils import remove_noise_data, get_data_multistep
from data_processing.nasa_file_processing import aggregate_data
from data_processing.fifa_file_processing import fifa_aggregate_data
from config.config import AUG_NASA_DATA_FILE, JULY_NASA_DATA_FILE, BILSTM_SAVE_MULTISTEP_MODEL_DIR, LSTM_SAVE_MULTISTEP_MODEL_DIR, GRU_SAVE_MULTISTEP_MODEL_DIR, STACK_LSTM_SAVE_MULTISTEP_MODEL_DIR, DATA_DIR
from models.bi_lstm import BiLSTM
from models.lstm import LSTMModel
from models.gru import GRUModel
from models.stack_lstm import StackLSTM


def merge_nasa_data():
    print("loading and aggregating NASA august data")
    df_aug = aggregate_data(AUG_NASA_DATA_FILE)
    print("loading and aggregating NASA july data")
    df_july = aggregate_data(JULY_NASA_DATA_FILE)
    print("Merging all data")
    df_nasa = pd.concat([df_july, df_aug], axis=0)
    return df_nasa


def process_train_test_data(df, test_size=0.25):
    print(type(df))
    if isinstance(df, pd.DataFrame):
        print(df.head())
        df_list = df['client_id'].tolist()
    else:
        df_list = df.to_list()
    # get data with multistep
    x_batch, y_batch = get_data_multistep(df_list)
    X_train, X_test, y_train, y_test = train_test_split(
        x_batch, y_batch, test_size=test_size)

    # remove noise data
    X_train, y_train = remove_noise_data(X_train, y_train, multisteps=5)
    X_test, y_test = remove_noise_data(X_test, y_test, multisteps=5)

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


def start_training(args):
    model_type = args.model_type
    units = int(args.units)
    epochs = int(args.epochs)
    batch_size = int(args.batch)
    dataset = args.data_type
    patience = int(args.patience)
    load_percent = int(args.load_percent)
    if not load_percent:
        print("load_percent is not provided!!!!")
        print("===> Used DEFAULT=50%")
        load_percent = 50
    if dataset == 'nasa':
        df = merge_nasa_data()
    elif dataset == 'fifa':
        if os.path.isfile(os.path.join(DATA_DIR, "fifa.csv")):
            print(">>>>>>>>>> Get data from CSV file!")
            df = pd.read_csv(os.path.join(DATA_DIR, 'fifa.csv'))
        else:
            print(">>>>>>>>>> Process all file!!!")
            df = fifa_aggregate_data(data_folder=DATA_DIR,
                                     interval='1min', load_percent=load_percent)
    else:
        raise TypeError("Invalid dataset!!!")

    X_train, y_train, X_test, y_test = process_train_test_data(
        df, test_size=0.25)
    callback = EarlyStopping(monitor='val_loss', patience=patience)
    if model_type == "bilstm":
        model = BiLSTM()
        model_dir = BILSTM_SAVE_MULTISTEP_MODEL_DIR
    elif model_type == "lstm":
        model = LSTMModel()
        model_dir = LSTM_SAVE_MULTISTEP_MODEL_DIR
    elif model_type == "gru":
        model = GRUModel()
        model_dir = GRU_SAVE_MULTISTEP_MODEL_DIR
    elif model_type == "stacklstm":
        model = StackLSTM()
        model_dir = STACK_LSTM_SAVE_MULTISTEP_MODEL_DIR
    else:
        raise TypeError("Invalid model type!!!")

    built_model = model.build(
        units=units, input_shape=(1, 10), num_classes=5)
    model.train(built_model, X_train, y_train, X_test,
                y_test, epochs=epochs, batch_size=batch_size, callbacks=[callback, ], multistep=True)
    model.save_model(built_model, model_dir=model_dir)


def add_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--model_type', "-m", help="Model type (BiLSTM / LSTM / GRU / StackLSTM)", required=True)
    parser.add_argument("--data_type", "-d",
                        help="Choose dataset (fifa / nasa)", required=True)
    parser.add_argument(
        "--units", "-u", help="Number hidden layers", required=True)
    parser.add_argument(
        "--epochs", "-e", help="Number epochs for training", required=True)
    parser.add_argument(
        "--batch", "-b", help="Batch size for training", required=True)

    parser.add_argument(
        "--patience", "-p", help="Number patience for early stopping", required=True)

    parser.add_argument("--load_percent", "-l",
                        help="Percent of data files will be processed", required=False)

    args = parser.parse_args()
    return args


if __name__ == "__main__":
    args = add_arguments()
    start_training(args)
