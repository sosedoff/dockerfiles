FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Update system
RUN apt-get update

# Install dependencies
RUN apt-get install -y sudo python-software-properties

# Add redis PPA
RUN add-apt-repository -y ppa:chris-lea/redis-server
RUN apt-get update

# Install redis server
RUN apt-get install -y redis-server

# Expose daemon server
EXPOSE 6379

# Setup redis server
CMD ["/usr/bin/redis-server"]