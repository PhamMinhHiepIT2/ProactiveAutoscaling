FROM python:3.8

WORKDIR /opt

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

ADD src/* /opt/

ENV KUBECONFIG_FILE="/tmp/kubeconfig"

CMD [ "python3", "app.py" ]