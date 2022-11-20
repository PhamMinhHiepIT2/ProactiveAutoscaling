import grpc
import tensorflow as tf
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2_grpc

channel = grpc.insecure_channel("localhost:8500")
stub = prediction_service_pb2_grpc.PredictionServiceStub(channel=channel)

request = predict_pb2.PredictRequest()

request.model_spec.name = "scaler"

request.model_spec.signature_name = "serving_default"


def grpc_infer(input: list):
    # if len(input) != 10:
    #     raise ValueError("Input is not valid!!!")

    request.inputs['bidirectional_1_input'].CopyFrom(
        tf.make_tensor_proto(input))
    result = stub.Predict(request, 10.0)
    result = result.outputs
    print(result)
    print()
    print(result['dense_3'].float_val)


if __name__ == "__main__":
    input = [[[1.0, 2.0, 3.0, 4.0, 10.0, 6.0, 15.0,
               8.0, 9.0, 5.0, 6.0, 15.0, 8.0, 9.0, 5.0]]]
    grpc_infer(input)
