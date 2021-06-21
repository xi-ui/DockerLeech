FROM php:8.0.7-apache

# Installing packages
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git wget apache2 curl
    
# Cloning git repository
RUN git clone https://github.com/XI11A/rapidleech.git ./

# Moving file
COPY ./ /var/www/html

# Exposing
EXPOSE  80
