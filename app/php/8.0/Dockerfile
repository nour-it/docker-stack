FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libfreetype-dev \ 
    libjpeg62-turbo-dev \
    libzip-dev \
    # libpq-dev \
    zip \
    unzip \
    && docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql bcmath
# RUN docker-php-ext-install pgsql pdo_pgsql


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www/html
CMD ["php", "-S", "0.0.0.0:80"]
