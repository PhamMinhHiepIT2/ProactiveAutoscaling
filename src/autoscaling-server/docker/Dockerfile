ARG MODEL_TYPE
FROM python:3.8 as base

RUN echo "deb [arch=amd64] http://storage.googleapis.com/tensorflow-serving-apt stable tensorflow-model-server tensorflow-model-server-universal" | tee /etc/apt/sources.list.d/tensorflow-serving.list && \
    curl https://storage.googleapis.com/tensorflow-serving-apt/tensorflow-serving.release.pub.gpg | apt-key add -

RUN apt-get update && apt-get install tensorflow-model-server

RUN pip install tensorflow-serving-api

WORKDIR /model

EXPOSE 8500
EXPOSE 8501

ENV PORT=8500
ENV REST_API_PORT=8501
ENV MODEL_NAME="scaler"
ENV MODEL_BASE_PATH="/model"


ENV MODEL_TYPE=${MODEL_TYPE}

FROM base as stage-bilstm
ADD bilstm/ ./scaler


FROM base as stage-gru
ADD gru/ ./scaler


FROM base as stage-lstm
ADD lstm/ ./scaler

FROM stage-$MODEL_TYPE
COPY entrypoint.sh .
ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]
