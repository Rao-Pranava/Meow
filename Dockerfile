FROM ubuntu:latest

RUN apt update
RUN apt install telnetd systemctl openssl -y

RUN echo "root:root" | chpasswd

RUN echo "telnet stream tcp nowait telnetd /usr/sbin/tcpd /usr/sbin/in.telnetd" >> /etc/inetd.conf

COPY ./Banner /etc/issue.net
COPY ./flag.txt  /root/flag.txt

EXPOSE 23
