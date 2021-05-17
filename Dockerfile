FROM ubuntu:20.04

WORKDIR /server

RUN apk add --no-cache --update wget tar
RUN wget http://nightly.mtasa.com/files/modules/64/libmysqlclient.so.16 -P ./usr/lib \
    && mkdir lib && cp ./usr/lib/libmysqlclient.so.16 ./lib \
    && mv multitheftauto_linux_x64* mtasa \
    && mkdir mtasa/.default \
    && mkdir mtasa/x64/modules \
    && wget https://nightly.mtasa.com/files/modules/64/mta_mysql.so -P mtasa/x64/modules \
    && wget https://nightly.mtasa.com/files/modules/64/ml_sockets.so -P mtasa/x64/modules \
    && chmod go+rw mtasa -R \
    && chmod +x usr/lib/libmysqlclient.so.16 lib/libmysqlclient.so.16