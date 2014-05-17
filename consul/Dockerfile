FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

RUN apt-get install -y unzip

ADD https://dl.bintray.com/mitchellh/consul/0.2.0_linux_amd64.zip /tmp/consul.zip
RUN cd /usr/local/bin && \
    unzip /tmp/consul.zip && \
    chmod +x /usr/local/bin/consul

EXPOSE 8400 8500 8600/udp

CMD ["/usr/local/bin/consul", "agent", "-bootstrap", "-server", "-data-dir=/tmp/consul", "-client=0.0.0.0"]