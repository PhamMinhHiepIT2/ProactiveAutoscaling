import grpc
import tensorflow as tf
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2_grpc


from config import AUTO_SCALER_HOST, AUTO_SCALER_PORT

scaler_endpoint = f"{AUTO_SCALER_HOST}:{AUTO_SCALER_PORT}"


channel = grpc.insecure_channel(scaler_endpoint)
stub = prediction_service_pb2_grpc.PredictionServiceStub(channel=channel)

request = predict_pb2.PredictRequest()

request.model_spec.name = "scaler"

request.model_spec.signature_name = "serving_default"


def grpc_infer(input: list):
    expanded_input = [[0]]
    expanded_input[0][0] = input
    try:
        request.inputs['bidirectional_input'].CopyFrom(
            tf.make_tensor_proto(expanded_input))
        result = stub.Predict(request, 10.0)
        result = result.outputs
        pred_request = result['dense_1'].float_val
        print("Predicted next request: {}".format(pred_request[0]))
        return pred_request[0]
    except Exception as e:
        print("Infer error!!! \nReason: {}\n\n".format(e))
        return 0