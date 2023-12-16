FROM php:8.1-apache
# FROM httpd 
# RUN apt-get update && apt-get install -y php libapache2-mod-php
# WORKDIR /htdocs
# EXPOSE 80

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
# RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
RUN docker-php-ext-install pgsql pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite ssl
RUN service apache2 restart

RUN mkdir /var/cert 

# RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/apache2/cert/key.pem -out /etc/apache2/cert/crt.pem
# CMD [ "apachectl", "search", "php" ]