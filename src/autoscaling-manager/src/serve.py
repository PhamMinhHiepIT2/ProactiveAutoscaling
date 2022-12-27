import grpc
import tensorflow as tf
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2_grpc


from config import AUTO_SCALER_HOST, AUTO_SCALER_PORT, MODEL_TYPE

scaler_endpoint = f"{AUTO_SCALER_HOST}:{AUTO_SCALER_PORT}"


channel = grpc.insecure_channel(scaler_endpoint)
stub = prediction_service_pb2_grpc.PredictionServiceStub(channel=channel)

request = predict_pb2.PredictRequest()

request.model_spec.name = "scaler"

request.model_spec.signature_name = "serving_default"


def grpc_infer(input: list):
    expanded_input = [[0]]
    expanded_input[0][0] = input
    print("[x] Input: {}".format(expanded_input))
    try:
        if MODEL_TYPE == 'bilstm':
            input_type = 'bidirectional_input'
        elif MODEL_TYPE == 'gru':
            input_type = 'gru_input'
        elif MODEL_TYPE == 'lstm':
            input_type = 'lstm_input'
        else:
            raise TypeError('>>>>>>>> MODEL TYPE is invalid!!!')
        request.inputs[input_type].CopyFrom(
            tf.make_tensor_proto(expanded_input))
        result = stub.Predict(request, 10.0)  # 10s for timeout
        result = result.outputs
        pred_request = result['dense_1'].float_val
        print("Predicted next request: {}".format(pred_request[0]))
        return pred_request[0]
    except Exception as e:
        print("Infer error!!! \nReason: {}\n\n".format(e))
        return 0


def grpc_infer_multistep(input: list):
    expanded_input = [[0]]
    expanded_input[0][0] = input
    print("[x] Input: {}".format(expanded_input))
    try:
        if MODEL_TYPE == 'bilstm':
            input_type = 'bidirectional_input'
        elif MODEL_TYPE == 'gru':
            input_type = 'gru_input'
        elif MODEL_TYPE == 'lstm':
            input_type = 'lstm_input'
        else:
            raise TypeError('>>>>>>>> MODEL TYPE is invalid!!!')
        request.inputs[input_type].CopyFrom(
            tf.make_tensor_proto(expanded_input))
        result = stub.Predict(request, 10.0)  # 10s for timeout
        result = result.outputs
        pred_request = result['dense_1'].float_val
        print("Predicted next request: {}".format(pred_request[0]))
        n = len(pred_request)
        s = 0
        for i in range(n, 0, -1):
            s += pred_request[n-i] * i

        pred_response = s // sum([range(1, n + 1)])
        return pred_response
    except Exception as e:
        print("Infer error!!! \nReason: {}\n\n".format(e))
        return 0


if __name__ == "__main__":
    input = [1., 2., 3., 4., 4., 6., 10., 4., 3., 7.]

    res = grpc_infer(input=input)
    print(res)
