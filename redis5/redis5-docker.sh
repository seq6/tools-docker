#!/bin/bash

docker run -d \
  -p 6380:6379 \
  --restart always \
  --privileged=true \
  --name redis5-docker \
  -v="$(pwd)"/conf/redis.conf:/etc/redis/redis.conf \
  -v="$(pwd)"/data:/var/lib/redis \
  redis:5 redis-server /etc/redis/redis.conf
