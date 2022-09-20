import os
from time import time

import tensorflow.compat.v1 as tf


class RNN:
    def __init__(self) -> None:
        self.hidden_size = None
        self.num_layer = None
        self.learning_rate = None
        self.learner = None
        self.mode = None
        self.output_keep_prob = 0.7

    def __create_one_cell(self):
        lstm_cell = tf.nn.rnn_cell.BasicRNNCell(
            self.hidden_size, activation=tf.nn.relu)
        return lstm_cell

    def __build_model(self, features, labels):
        # input
        inputs = features['inputs']
        time_steps = inputs.shape[1]
        inputs = tf.reshape(inputs, [-1, time_steps, 1])

        cell = tf.nn.rnn_cell.MultiRNNCell(
            [self.__create_one_cell() for _ in range(self.num_layers)],
            state_is_tuple=True) if self.num_layers > 1 else self.__create_one_cell()

        val, _ = tf.nn.dynamic_rnn(
            cell, inputs, dtype=tf.float32, scope="dynamic_rnn")
        outputs = val[:, (time_steps-1):, :]

        # flatten lstm output and pass through a dense layer
        lstm_flat = tf.reshape(outputs, [-1, cell.output_size])
        h1 = tf.layers.dense(lstm_flat, cell.output_size //
                             2, activation=tf.nn.relu)
        predictions = tf.layers.dense(h1, 1, activation=None)  # (?, 1)

        export_outputs = {
            'out_put': tf.estimator.export.RegressionOutput(predictions)
        }
        predict_op = {
            'predict_one': predictions
        }

        if self.mode == tf.estimator.ModeKeys.PREDICT:
            return tf.estimator.EstimatorSpec(mode=self.mode, predictions=predict_op, export_outputs=export_outputs)
        target = tf.reshape(labels, (-1, 1))
        loss = tf.losses.mean_squared_error(target, predictions)
        if self.mode == tf.estimator.ModeKeys.TRAIN:
            if self.learner.lower() == "adagrad":
                optimizer = tf.train.AdagradOptimizer(
                    learning_rate=self.learning_rate)
            elif self.learner.lower() == "rmsprop":
                optimizer = tf.train.RMSPropOptimizer(
                    learning_rate=self.learning_rate)
            elif self.learner.lower() == "adam":
                optimizer = tf.train.AdamOptimizer(
                    learning_rate=self.learning_rate)
            else:
                optimizer = tf.train.GradientDescentOptimizer(
                    learning_rate=self.learning_rate)

            train_op = optimizer.minimize(
                loss=loss,
                global_step=tf.train.get_global_step())
            return tf.estimator.EstimatorSpec(mode=self.mode, loss=loss, train_op=train_op, export_outputs=export_outputs)

        eval_metric_ops = {
            'loss_rmse': tf.metrics.root_mean_squared_error(target, predictions),
            'loss_mae': tf.metrics.mean_absolute_error(target, predictions)
        }

        return tf.estimator.EstimatorSpec(self.mode, loss=loss, eval_metric_ops=eval_metric_ops, export_outputs=export_outputs)

    def train(self, X_train, y_train, X_test, y_test, epochs, model_dir):
        params = {
            'hidden_size': self.hidden_size,
            'output_keep_prob': self.output_keep_prob,
            'num_layers': self.num_layer,
            'learning_rate': self.learning_rate,
            'learner': self.learner
        }
        # Train model
        print('Training model...')

        config = tf.estimator.RunConfig(keep_checkpoint_max=20)
        rnn_model = tf.estimator.Estimator(
            model_fn=self.__build_model, model_dir=str(os.path.join(model_dir, str(time()))), params=params, config=config)
        # inputs, labels = X_train, y_train
        for i in range(epochs):

            train_input_fn = tf.estimator.inputs.numpy_input_fn(
                x={
                    "inputs": X_train,
                },
                y=y_train,
                num_epochs=1,
                shuffle=True
            )

            rnn_model.train(input_fn=train_input_fn)
            # Test model
            print('Testing model...')
            eval_input_fn = tf.estimator.inputs.numpy_input_fn(
                x={"inputs": X_test}, y=y_test, shuffle=False)
            test_result = rnn_model.evaluate(input_fn=eval_input_fn)
            print(test_result)

        serving_input_receiver_fn = tf.estimator.export.build_parsing_serving_input_receiver_fn(
            {'inputs': tf.FixedLenFeature(dtype=tf.float32, shape=[10])},
            default_batch_size=None
        )
        rnn_model.export_savedmodel(model_dir, serving_input_receiver_fn)

        print('Done Training!')
