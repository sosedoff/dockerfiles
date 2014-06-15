FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

RUN git clone https://github.com/sstephenson/ruby-build.git && \
    ./ruby-build/bin/ruby-build "2.1.2" "/usr/local" && \
    rm -rf ./ruby-build && \
    rm /tmp/ruby-build*

RUN gem update --system
RUN gem install bundler