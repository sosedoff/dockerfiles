FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Download archive
ADD http://nodejs.org/dist/v0.10.22/node-v0.10.22-linux-x64.tar.gz .

# Extract archive
RUN tar -zxf node-v0.10.22-linux-x64.tar.gz

# Install all nodejs files
RUN cp -r node-v0.10.22-linux-x64/bin/* /usr/local/bin/
RUN cp -r node-v0.10.22-linux-x64/lib/* /usr/local/lib/
RUN cp -r node-v0.10.22-linux-x64/share/* /usr/local/share/