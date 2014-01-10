FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Setup GOPATH
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /usr/local/go/

# Install Go tools
RUN wget --no-verbose https://go.googlecode.com/files/go1.2.src.tar.gz
RUN tar -v -C /usr/local -xzf go1.2.src.tar.gz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1