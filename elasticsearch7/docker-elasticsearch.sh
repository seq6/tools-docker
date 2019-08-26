#!/bin/bash

docker run -d \
  -p 9200:9200 -p 9300:9300 \
  --restart always \
  --privileged=true \
  --name es-docker \
  -e "discovery.type=single-node" \
  -v="$(pwd)"/conf:/usr/share/elasticsearch/conf \
  -v="$(pwd)"/data:/usr/share/elasticsearch/data \
  -v="$(pwd)"/logs:/usr/share/elasticsearch/logs \
  elasticsearch:7.3.0
