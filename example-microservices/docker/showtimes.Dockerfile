FROM python:2.7
WORKDIR /opt

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY . .

EXPOSE 5002

CMD [ "python", "-m", "services.showtimes" ]
