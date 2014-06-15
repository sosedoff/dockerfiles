FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Download archive
ADD http://nodejs.org/dist/v0.10.25/node-v0.10.25-linux-x64.tar.gz /tmp/

# Extract archive
RUN tar -zxf /tmp/node-v0.10.25-linux-x64.tar.gz

# Install all nodejs files
RUN cp -r node-v0.10.25-linux-x64/bin/* /usr/local/bin/
RUN cp -r node-v0.10.25-linux-x64/lib/* /usr/local/lib/
RUN cp -r node-v0.10.25-linux-x64/share/* /usr/local/share/

# Cleanup
RUN rm -rf node-v0.10.25-linux-x64
RUN rm /tmp/node-v0.10.25-linux-x64.tar.gz