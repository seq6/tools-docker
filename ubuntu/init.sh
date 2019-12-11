#docker run -ti -v ~/work:/work ubuntu:18.04 bash

docker run -ti -v ~/work:/work --network tools-docker_app_net --ip 177.18.0.8 --name tool-ubuntu1804 ubuntu:18.04 bash

#正确退出系统方式：
#先按，ctrl+p
#再按，ctrl+q
