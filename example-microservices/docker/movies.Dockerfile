FROM python:2.7
WORKDIR /opt

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY . .

EXPOSE 5001

CMD [ "python", "-m", "services.movies" ]
