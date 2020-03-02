FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip3 install --upgrade pip3
RUN pip3 install flask
RUN pip3 install gunicorn
RUN pip3 install jwt
RUN pip3 install pytest


ENTRYPOINT ["python3", "main.py"]
