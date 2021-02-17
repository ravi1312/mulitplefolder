FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get install -y python3-pip python-dev build-essential
RUN pip3 install awscli
