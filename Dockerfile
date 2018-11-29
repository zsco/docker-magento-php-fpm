FROM meanbee/magento2-php:7.1-fpm

RUN docker-php-ext-install \
        opcache

RUN pecl install apcu

RUN echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini