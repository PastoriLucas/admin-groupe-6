FROM ubuntu:latest

RUN apt update 
RUN apt install -y bind9 
RUN apt install -y nano 
RUN apt install -y dnsutils

COPY db.wt2-6.ephec-ti.be /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.default-zones /etc/bind/

EXPOSE 53

WORKDIR /etc/bind 

VOLUME /etc/bind 