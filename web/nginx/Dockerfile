FROM nginx:latest 
# RUN apt-get update 

RUN mkdir -p -m 777 /etc/nginx/cert/

COPY cert/* /etc/nginx/cert/

# RUN openssl req -newkey rsa:2048 -nodes -keyout /var/cert/key.pem -out /var/cert/csr.pem
# CMD ["apt-get", "search", "fail2ban"] 

# openssl genpkey -algorithm RSA -out /etc/nginx/cert/localhost.key
# openssl req -new -key /etc/nginx/cert/localhost.key -out /etc/nginx/cert/localhost.csr
# openssl x509 -req -days 365 -in /etc/nginx/cert/localhost.csr -signkey /etc/nginx/cert/localhost.key -out /etc/nginx/cert/localhost.crt
# openssl x509 -text -noout -in /etc/nginx/cert/localhost.crt

# sudo certbot certonly --nginx -d localhost.com

