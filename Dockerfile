FROM alpine

RUN apk --update add git python python-dev musl-dev libffi-dev openssl-dev linux-headers py-pip gcc

RUN git clone https://github.com/app-registry/appr.git

WORKDIR /appr

RUN pip install -e . && pip install gunicorn