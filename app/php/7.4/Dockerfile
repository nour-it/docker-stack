FROM php:7.4-fpm

# RUN sed -i 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' /etc/apt/sources.list.d/pgdg.list 

RUN apt-get update && apt-get install -y \
    libfreetype-dev \ 
    libjpeg62-turbo-dev \
    libzip-dev \
    # libpq-dev \
    zip \
    unzip \
    && docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql bcmath
RUN docker-php-ext-install pgsql pdo_pgsql


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www/html
# COPY ./php.ini /usr/local/etc/php/
# RUN composer install --no-interaction --no-scripts --no-suggest
# EXPOSE 80
# CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
# CMD ["php-fpm"]
CMD ["php", "-S", "0.0.0.0:80"]
