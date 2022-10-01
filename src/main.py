import argparse

from common.nasa_file_processing import merge_data
from common.utils import split_train_test_data
from app.train import train_rnn_model


def add_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--num_epochs', type=int, default=10,
                        help='No. of epochs')
    parser.add_argument('--hidden_size', type=int, default=256,
                        help='No. of lstm cells in each layer')
    parser.add_argument('--output_keep_prob', type=float, default=0.7,
                        help='keep_prob factor')
    parser.add_argument('--num_layers', type=int, default=5,
                        help='No. of layers')
    parser.add_argument('--learner', nargs='?', default='Adam',
                        help='No. of epochs')
    parser.add_argument('--lr', type=float, default=0.001,
                        help='Learning rate')
    return parser.parse_args()


if __name__ == "__main__":
    args = add_arguments()
    data_files = ["/Users/hieppm/hieppm/HUST/20221/DATN/data/NASA_access_log_Aug95",
                  "/Users/hieppm/hieppm/HUST/20221/DATN/data/NASA_access_log_Jul95"]
    data = merge_data(data_files)
    X_train, y_train, X_test, y_test = split_train_test_data(series_data=data)
    train_rnn_model(
        X_train=X_train, y_train=y_train, X_test=X_test, y_test=y_test,
        hidden_size=args.hidden_size, num_layers=args.num_layers,
        learning_rate=args.lr, learner=args.learner, mode=args.mode, output_keep_prob=args.output_keep_prob
    )
