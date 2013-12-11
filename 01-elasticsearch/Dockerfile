FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Add universe source
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Update system
RUN apt-get update -y
RUN apt-get upgrade -y

# Fix upstart (https://github.com/dotcloud/docker/issues/1024)
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# Fix locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Install dependencies
RUN apt-get install -y sudo python-software-properties openjdk-7-jre-headless

# Install elasticsearch
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb /tmp/
RUN dpkg -i /tmp/elasticsearch-0.90.7.deb
RUN rm /tmp/elasticsearch-0.90.7.deb

# Setup elasticsearch
EXPOSE 9200
ENTRYPOINT [/usr/share/elasticsearch/bin/elasticsearch]