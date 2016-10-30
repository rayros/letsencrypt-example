FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install letsencrypt
COPY letsencrypt.ini /etc/letsencypt/letsencrypt.ini
RUN letsencrypt certonly -c /etc/letsencypt/letsencrypt.ini
