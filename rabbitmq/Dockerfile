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

# Install RabbitMQ database server
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
RUN curl http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | apt-key add -

# Update sources
RUN apt-get update

# Install erlang
RUN apt-get install -y rabbitmq-server

# Expose server ports
EXPOSE 5672 55672

# Run server
CMD ["/usr/sbin/rabbitmq-server"]