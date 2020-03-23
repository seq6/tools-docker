
FROM ubuntu:18.04

MAINTAINER zj

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install php7.2-fpm -y

WORKDIR /opt/www

ADD index.php /opt/www

CMD ["php", "-S", "localhost:80"]
