FROM    ubuntu:trusty
MAINTAINER Ritesh Patel <ritesh@nirmata.com>

# Repo and packages
RUN echo deb http://archive.ubuntu.com/ubuntu trusty universe | tee -a /etc/apt/sources.list
#RUN echo deb http://archive.ubuntu.com/ubuntu trusty-updates universe | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes ubuntu-cloud-keyring

#Install Supervisor OpenSSH vim
RUN apt-get install -y openssh-server supervisor vim-tiny python-pip mysql-client mysql-common python-mysqldb

#Setup sshd
RUN mkdir -p /var/run/sshd && echo 'root:root' |chpasswd
EXPOSE 22

#Setup supervisord
RUN mkdir -p /var/log/supervisor
