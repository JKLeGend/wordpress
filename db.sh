#!/usr/bin/env bash

docker run -d \
       --name=mysql \
       -e MYSQL_ROOT_PASSWORD=somewordpress \
       -e MYSQL_DATABASE=wordpress \
       -e MYSQL_USER=wordpress \
       -e MYSQL_PASSWORD=wordpress \
       -e LANG=C.UTF-8 \
       mysql:5.7
