
FROM python:3.8

RUN echo "deb [arch=amd64] http://storage.googleapis.com/tensorflow-serving-apt stable tensorflow-model-server tensorflow-model-server-universal" | tee /etc/apt/sources.list.d/tensorflow-serving.list && \
    curl https://storage.googleapis.com/tensorflow-serving-apt/tensorflow-serving.release.pub.gpg | apt-key add -

RUN apt-get update && apt-get install tensorflow-model-server

RUN pip install tensorflow-serving-api

WORKDIR /model

ADD  cpu/ ./scaler

COPY entrypoint.sh .

EXPOSE 8500
EXPOSE 8501

ENV PORT=8500
ENV REST_API_PORT=8501
ENV MODEL_NAME="scaler"
ENV MODEL_BASE_PATH="/model"

ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]