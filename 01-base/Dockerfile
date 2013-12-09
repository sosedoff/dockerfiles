FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

# Update system
RUN apt-get update -y
RUN apt-get upgrade -y

# Fix upstart (https://github.com/dotcloud/docker/issues/1024)
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# Fix locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Change root password
RUN echo "root:root" | chpasswd

# Install build dependencies
RUN apt-get install -y sudo python-software-properties bsdmainutils netcat telnet wget
RUN apt-get install -y autoconf binutils bison build-essential curl libcurl4-openssl-dev libffi-dev libgdbm-dev libicu-dev libncurses5-dev libreadline-dev libreadline6-dev libssl-dev libxml2 libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ncurses-dev openssh-server zlib1g zlib1g-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libssl1.0.0 libssl-dev

# Install SCMs
RUN add-apt-repository -y ppa:git-core/ppa
RUN add-apt-repository -y ppa:mercurial-ppa/releases
RUN add-apt-repository -y ppa:svn/ppa
RUN apt-get update -y
RUN apt-get install -y git mercurial subversion

# Setup SSH server
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd