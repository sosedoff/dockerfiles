FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Add universe source
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Update system
RUN apt-get update
RUN apt-get upgrade -y

# Fix upstart (https://github.com/dotcloud/docker/issues/1024)
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# Fix locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Install dependencies
RUN apt-get install -y curl

# Install Erlang repositories
ADD http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp/
RUN dpkg -i /tmp/erlang-solutions_1.0_all.deb && rm /tmp/erlang-solutions_1.0_all.deb

# Update sources
RUN apt-get update

# Install erlang
RUN apt-get install -y erlang