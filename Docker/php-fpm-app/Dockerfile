FROM phpdockerio/php72-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php-memcached php7.2-mysql php-redis php-xdebug \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

#RUN echo $PATH

#ADD ./setup.sh /setup.sh
#RUN chmod +x /setup.sh
#CMD ["sh", "/setup.sh"]

#RUN mkdir -p /var/www/.composer \
#    && chown -R www-data:www-data /var/www/.composer
#WORKDIR "app"
#USER www-data
#RUN composer install


#RUN cd /application/app; composer install

#RUN su - www-data -s /bin/bash -c 'cd /application/app && composer install'
