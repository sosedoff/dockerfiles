FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Add universe source
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Update system
RUN apt-get update -y
RUN apt-get upgrade -y

# Fix locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Change root password
RUN echo "root:root" | chpasswd

# Setup SSH server
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Run dependencies installation
ADD setup.sh /tmp/setup.sh
RUN /tmp/setup.sh