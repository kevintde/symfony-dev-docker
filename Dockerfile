FROM php:8.1-apache
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install -y wget curl git 
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/
RUN wget https://getcomposer.org/download/latest-stable/composer.phar
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

EXPOSE 8000
EXPOSE 80
CMD ["apache2-foreground"]
