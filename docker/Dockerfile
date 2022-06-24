FROM debian:stretch-slim


LABEL Description="queue-watcher" Vendor="Leonardo Leite" Version="1.0" maintainer="leonard.leite.silva@gmail.com"
ENV DEBIAN_FRONTEND noninteractive
ENV LOCALE en_EN.UTF-8


RUN apt-get update && apt-get -y upgrade && apt-get install -y vim git libopal-dev libpt-dev
RUN git clone --branch queue-watcher https://github.com/roxleopardo/sipcmd2.git && \
cd sipcmd2 && \
apt install -y make g++ 

RUN cd sipcmd2 && make
CMD /sipcmd2/sipcmd2 -P <proto> -u <extension> -a <authentication id> -c <password> -w <sip server> -x "lstart;w10000;j0lstart"
