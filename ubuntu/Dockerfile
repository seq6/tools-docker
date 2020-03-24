
FROM ubuntu:18.04

MAINTAINER zj

RUN set -ex \
    && mkdir /opt/www \
    && cd /opt/www \
    && echo "<?php" > index.php \
    && echo "echo 'ok';" >> index.php \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install php7.2-fpm -y \
    && php -v \
    && apt-get install curl -y \
    && curl -sS https://getcomposer.org/installer | php \
    && chmod u+x composer.phar \
    && mv composer.phar /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://packagist.phpcomposer.com

WORKDIR /opt/www

EXPOSE 80

CMD ["php", "-S", "localhost:80"]
