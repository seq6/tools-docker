#!/bin/bash

docker run -d -p 3307:3306 \
  --restart always \
  --privileged=true \
  --name mysql57-docker \
  -e MYSQL_USER="worker" \
  -e MYSQL_PASSWORD="123456" \
  -e MYSQL_ROOT_PASSWORD="123456" \
  -v="$(pwd)"/conf/my.cnf:/etc/my.cnf \
  -v="$(pwd)"/data:/var/lib/mysql \
  mysql:5.7
