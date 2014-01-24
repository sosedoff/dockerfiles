FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

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

# Install mysql server
RUN apt-get install -y mysql-server mysql-client

# Configure server
ADD my.cnf /etc/mysql/my.cnf

# Start server to setup mysql user
RUN /usr/sbin/mysqld & sleep 10s
RUN mysql -p --execute="CREATE USER 'root'@'%' IDENTIFIED BY 'root';"
RUN mysql -p --execute="GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;"

# Export daemon port
EXPOSE 3306

# Start daemon
CMD ["/usr/bin/mysqld_safe"]