from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
from grpc.beta import implementations
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2_grpc


def _init_feature(value):
    return tf.train.Feature(float_list=tf.train.FloatList(value=value))


def main():

    input_data = [20, 30, 20, 40, 30, 20, 20, 20, 20, 20]
    channel = implementations.insecure_channel('127.0.0.1', int(8500))

    stub = prediction_service_pb2_grpc.PredictionServiceStub(channel)

    request = predict_pb2.PredictRequest()
    request.model_spec.name = 'scaler'

    feature_dict = {'inputs': _init_feature(input_data)}

    example = tf.train.Example(
        features=tf.train.Features(feature=feature_dict))
    serialized = example.SerializeToString()

    request.inputs['inputs'].CopyFrom(
        tf.contrib.util.make_tensor_proto(serialized, shape=[1]))

    result_future = stub.Predict.future(request, 5.0)
    prediction = result_future.result().outputs['outputs'].float_val
    print('Prediction: ' + str(prediction))


if __name__ == '__main__':
    main()
