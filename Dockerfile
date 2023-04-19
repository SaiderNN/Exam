FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY hello_app/ .

ENV HOST_IP=0.0.0.0

CMD ["python3", "app.py"]
