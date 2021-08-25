FROM ubuntu:20.04

ARG  MOSQUITTOVERSION
ENV  MOSQUITTOVERSION 1.6.10

MAINTAINER Ansgar Schmidt <ansgar.schmidt@gmx.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update     && \
    apt-get upgrade -y && \
    apt-get install -y wget build-essential libwrap0-dev libssl-dev python-distutils-extra \
                       libc-ares-dev uuid-dev
RUN apt-get install mosquitto -y
#RUN     mkdir -p /usr/local/src
#WORKDIR          /usr/local/src
#RUN     wget http://mosquitto.org/files/source/mosquitto-1.6.10.tar.gz
#RUN     tar xvzf ./mosquitto-1.6.10.tar.gz
#WORKDIR /usr/local/src/mosquitto-1.6.10
#RUN     make && make install
#RUN     ldconfig 

#RUN     echo "listener 1883 0.0.0.0" >> /usr/local/src/mosquitto-1.6.10/mosquitto.conf
#RUN     echo "allow_anonymous true" >> /usr/local/src/mosquitto-1.6.10/mosquitto.conf

#RUN     adduser --system --disabled-password --disabled-login mosquitto
#USER    mosquitto

#EXPOSE 1883

#CMD ["/usr/local/sbin/mosquitto"]
