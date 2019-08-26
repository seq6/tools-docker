#!/bin/bash

docker run -d -p 8100:80 \
  --restart always \
  --privileged=true \
  --name nginx-docker \
  -v="$(pwd)"/conf/nginx.conf:/etc/nginx/nginx.conf \
  -v="$(pwd)"/data:/usr/share/nginx/html \
  -v="$(pwd)"/sites-enabled:/etc/nginx/conf.d \
  -v="$(pwd)"/log:/var/log/nginx \
  nginx:latest
