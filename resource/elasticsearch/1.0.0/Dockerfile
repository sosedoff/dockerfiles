FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Add universe source
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Update system
RUN apt-get update
RUN apt-get upgrade -y

# Set locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Install dependencies
RUN apt-get install -y sudo python-software-properties openjdk-7-jre-headless

# Install elasticsearch
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.deb /tmp/elasticsearch-1.0.0.deb
RUN dpkg -i /tmp/elasticsearch-1.0.0.deb && rm /tmp/elasticsearch-1.0.0.deb

# Install elasticsearch config
ADD elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

# Setup elasticsearch
EXPOSE 9200

# Start elasticsearch, make sure to run container in the background
CMD ["/usr/share/elasticsearch/bin/elasticsearch", "-f"]