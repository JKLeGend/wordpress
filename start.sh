#!/usr/bin/env bash

docker stop wordpress
docker rm wordpress
docker rmi jk/wordpress
docker build -t jk/wordpress -f Dockerfile .
docker run -d \
       -p8081:80 \
       --name=wordpress \
       --link mysql \
       -e WORDPRESS_DB_NAME=wordpress \
       -e WORDPRESS_DB_USER=wordpress \
       -e WORDPRESS_DB_PASSWORD=wordpress \
       jk/wordpress
