FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Setup GOPATH
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /usr/local/go/

# Install prebuilt Go tools
ADD https://go.googlecode.com/files/go1.2.linux-amd64.tar.gz .
RUN tar -C /usr/local -xzf go1.2.linux-amd64.tar.gz
RUN rm go1.2.linux-amd64.tar.gz