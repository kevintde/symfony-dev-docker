FROM php:8.1-apache
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install -y wget curl git 
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/

EXPOSE 8000
EXPOSE 80
CMD ["apache2-foreground"]
