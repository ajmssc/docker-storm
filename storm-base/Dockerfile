FROM java:8

MAINTAINER guido.schmutz@trivadis.com 
 
RUN apt-get update; apt-get install -y netcat unzip wget supervisor openssh-server

RUN echo 'root:schmutz' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
