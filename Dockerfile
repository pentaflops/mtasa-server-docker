FROM ubuntu:20.04

RUN apt update \
	&& apt upgrade -y \
	&& apt install -y libstdc++6 lib32stdc++6 libreadline5 libncursesw5 tar curl iproute2 openssl wget unzip libmysqlclient-dev \
	&& cd /usr/lib \
	&& wget https://nightly.mtasa.com/files/modules/64/libmysqlclient.so.16

WORKDIR /server