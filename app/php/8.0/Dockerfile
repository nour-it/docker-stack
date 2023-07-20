FROM php:8.0-fpm

RUN apt-get update && apt-get install -y \
    libfreetype-dev \ 
    libjpeg62-turbo-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql bcmath

RUN apt-get update && apt-get install -y \
    libpq-dev 
RUN docker-php-ext-install pgsql pdo_pgsql


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www/html
STOPSIGNAL SIGQUIT
EXPOSE 9000
CMD ["php-fpm"]
