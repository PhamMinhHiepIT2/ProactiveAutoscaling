from keras.models import Sequential
from keras.layers import Dense, LSTM, Bidirectional, Flatten
from keras.callbacks import EarlyStopping


class BiLSTM:
    def __init__(self):
        self.callback = EarlyStopping(monitor='loss', patience=5)

    def build(self, units, input_shape, num_classes=1):
        """
        Build Sequential models with BiLSTM layers

        Args:
            units (int): number hidden layers for LSTM
            input_shape (tuple): shape of input data
            num_classes (int, optional): Number classes of output. Defaults to 1.

        Returns:
            Sequential model
        """

        model = Sequential()
        model.add(Bidirectional(LSTM(units, activation='relu',
                  return_sequences=True), input_shape=input_shape, merge_mode='concat'))
        model.add(Flatten())
        model.add(Dense(16, activation='relu'))
        model.add(Dense(num_classes))
        return model

    def train(self, model, X_train, y_train, X_test, y_test, epochs, batch_size, callbacks):
        """
        Training BiLSTM model

        Args:
            model: Sequential model of BiLSTM
            X_train: training data
            y_train: training labels
            X_test: testing data
            y_test: testing label
            epochs: number epochs to train
            batch_size: batch size for input when training
            callbacks: callbacks function to avoid overfitting or underfitting
        """
        history = model.fit(X_train, y_train,
                            batch_size=batch_size,
                            epochs=epochs,
                            validation_data=[X_test, y_test],
                            callbacks=callbacks)
        print(history.history['loss'])
        print(history.history['val_loss'])
        print(history.history)

    def save_model(self, model, model_dir):
        """
        Save model to specified path

        Args:
            model: BiLSTM trained model
            model_dir: path to save model
        """
        model.save(model_dir)
