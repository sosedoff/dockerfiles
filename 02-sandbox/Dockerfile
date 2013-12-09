FROM sosedoff/base
MAINTAINER Dan Sosedoff "dan.sosedoff@gmail.com"

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

# Run SSH server
EXPOSE 22
ENTRYPOINT /usr/sbin/sshd -D