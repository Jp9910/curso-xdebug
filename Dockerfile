FROM php

RUN pecl uninstall xdebug && pecl install xdebug && docker-php-ext-enable xdebug

COPY . /app

COPY ./99-xdebug.ini /usr/local/etc/php/conf.d/99-xdebug.ini

WORKDIR /app

ENTRYPOINT ["/bin/bash"]