#!/bin/bash

docker run -it --name="my_ubuntu2004" --ip 177.18.0.10 --network "tools-docker_app_net" -v ~/work:/work ubuntu:20.04 bash

# apt-get update && apt-get upgrade -y

# ctrl+d 退出容器且关闭, docker ps 查看无
# ctrl+p+q 退出容器但不关闭, docker ps 查看有
