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

# Install dependencies
RUN apt-get install -y sudo python-software-properties

# Change root password
RUN echo "root:root" | chpasswd

# Setup a guest user
RUN useradd -m -d /home/sandbox -s /bin/bash -U sandbox
RUN echo sandbox:sandbox | chpasswd
RUN mkdir -p /home/sandbox/.ssh
RUN touch /home/sandbox/.ssh/authorized_keys
RUN chmod 700 /home/sandbox/.ssh
RUN chmod 600 /home/sandbox/.ssh/*
RUN chown -R sandbox:sandbox /home/sandbox

# Add guest user to sudoers
RUN echo "sandbox ALL=NOPASSWD: ALL" >> /etc/sudoers

# Setup SSH server
RUN apt-get install openssh-server
RUN mkdir /var/run/sshd

# Run SSH server
EXPOSE 22
ENTRYPOINT /usr/sbin/sshd -D