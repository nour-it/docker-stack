FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    libfreetype-dev \ 
    libjpeg62-turbo-dev \
    libzip-dev \
    zip \
    unzip \
    libpq-dev 
    
RUN docker-php-ext-install zip pdo_mysql bcmath pgsql pdo_pgsql mysqli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
EXPOSE 9000
# CMD ["php", "-S", "0.0.0.0:8080", "-t", "public/"]
CMD ["php-fpm"]

