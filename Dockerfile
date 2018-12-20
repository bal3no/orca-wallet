FROM php:5.4-apache
MAINTAINER bal3no <bal3no@gmail.com>

RUN apt-get update

RUN apt-get -y install wget nano libcurl4-gnutls-dev libssh2-1-dev libssh2-php openssh-server

RUN docker-php-ext-install mysql mysqli pdo pdo_mysql json curl
RUN pecl install -f ssh2
RUN docker-php-ext-enable ssh2
RUN a2enmod rewrite
#COPY orca-wallet-master/public/ /var/www/html/
