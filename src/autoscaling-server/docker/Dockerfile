FROM tensorflow/serving:latest

WORKDIR /model

ADD  cpu/ ./scaler

EXPOSE 8500
EXPOSE 8501

ENV PORT=8500
ENV REST_API_PORT=8501
ENV MODEL_NAME="scaler"
ENV MODEL_BASE_PATH="/model"