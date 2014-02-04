FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Setup database client libraries
RUN apt-get install -y mysql-client libmysqlclient-dev
RUN apt-get install -y postgresql-client-9.1 libpq-dev
RUN apt-get install -y sqlite3 libsqlite3-dev

# Install ruby
ADD http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p353.tar.gz /tmp/
RUN tar -xzf /tmp/ruby-2.0.0-p353.tar.gz && (cd ruby-2.0.0-p353/ && ./configure --disable-install-doc && make && make install)
RUN rm -rf /tmp/ruby* && rm -rf /ruby

# Update rubygems
RUN gem update --system

# Install bundler
RUN gem install bundler --no-ri --no-rdoc