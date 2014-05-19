FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

RUN apt-get update && \
    apt-get install -y python-software-properties

RUN add-apt-repository ppa:mozillateam/firefox-next && \
    apt-get update

RUN apt-get install -y firefox