FROM ubuntu:20.04

WORKDIR /server

RUN apt-get update && apt-get upgrade -y && apt install libmysqlclient-dev