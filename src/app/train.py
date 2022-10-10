from models.rnn_model import RNN


def init_rnn_model(hidden_size, num_layers, learning_rate, learner, output_keep_prob=0.7):
    rnn_model = RNN()
    rnn_model.hidden_size = hidden_size
    rnn_model.num_layer = num_layers
    rnn_model.learning_rate = learning_rate
    rnn_model.learner = learner
    rnn_model.output_keep_prob = output_keep_prob
    return rnn_model


def train_rnn_model(X_train, y_train, X_test, y_test, hidden_size, num_layers, learning_rate, learner, epochs, model_dir, output_keep_prob=0.7):
    rnn_model = init_rnn_model(
        hidden_size, num_layers, learning_rate, learner, output_keep_prob=output_keep_prob)
    rnn_model.train(X_train=X_train, y_train=y_train, X_test=X_test, y_test=y_test,
                    epochs=epochs, model_dir=model_dir)
