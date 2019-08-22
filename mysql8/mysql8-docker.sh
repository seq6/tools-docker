#!/bin/bash

docker run -d -p 3306:3306 \
  --restart always \
  --privileged=true \
  --name zhangji-mysql8 \
  -e MYSQL_USER="worker" \
  -e MYSQL_PASSWORD="123456" \
  -e MYSQL_ROOT_PASSWORD="123456" \
  -v="$(pwd)"/conf/my.cnf:/etc/my.cnf \
  -v="$(pwd)"/data:/var/lib/mysql mysql:latest
