FROM httpd 
RUN apt-get update && apt-get install -y php libapache2-mod-php
WORKDIR /htdocs
EXPOSE 80
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
# CMD [ "apachectl", "search", "php" ]