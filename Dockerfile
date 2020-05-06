FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python3-pip -y
RUN mkdir /opt/app
COPY src/* /opt/app/
COPY requirements.txt /opt/app/
RUN pip3 install -r /opt/app/requirements.txt

#ENTRYPOINT "python /opt/app/main.py"
