#!/bin/sh

docker-compose up -d
docker-compose exec php-fpm-app bash -c 'mkdir -p /var/www/.composer'
docker-compose exec php-fpm-app bash -c 'chown -R www-data:www-data /var/www/.composer'
docker-compose exec --user www-data php-fpm-app bash -c 'cd /application/app && composer install'

