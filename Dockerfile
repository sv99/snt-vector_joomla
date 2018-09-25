FROM php:7.1-apache

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y openssl zip unzip git \
zlib1g-dev libmcrypt-dev

RUN docker-php-ext-install mysqli pdo_mysql zip iconv mcrypt

RUN pecl install xdebug && docker-php-ext-enable xdebug

ARG xdebug_ini=/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN echo xdebug.remote_enable=on >> $xdebug_ini \
    && echo xdebug.remote_port=9000 >> $xdebug_ini \
    && echo xdebug.remote_autostart=on >> $xdebug_ini \
    && echo xdebug.remote_connect_back=off >> $xdebug_ini \
    && echo xdebug.idekey=PHP_STORM >> $xdebug_ini \
    && echo xdebug.remote_host=host.docker.internal >> $xdebug_ini


