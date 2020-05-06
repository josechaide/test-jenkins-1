FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN python -m pip install --upgrade pip
RUN pip install flask
RUN mkdir /opt/app/
COPY src/* /opt/app/
COPY requirements.txt /opt/app/
RUN pip install -r /opt/app/requirements.txt

COPY docker-entrypoint.sh /

ENTRYPOINT "/docker-entrypoint.sh"
