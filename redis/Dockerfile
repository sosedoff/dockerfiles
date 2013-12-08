FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

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
RUN apt-get install -y sudo python-software-properties

# Change root password
RUN echo "root:root" | chpasswd

# Add redis ppa
RUN add-apt-repository -y ppa:chris-lea/redis-server
RUN apt-get update -y

# Install redis server
RUN apt-get install -y redis-server

# Setup redis server
EXPOSE 6379
ENTRYPOINT /usr/bin/redis-server