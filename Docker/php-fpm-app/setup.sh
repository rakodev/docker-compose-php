#!/bin/sh

mkdir -p /var/www/.composer
chown -R www-data:www-data /var/www/.composer
su - www-data -s /bin/bash -c 'cd /application/app && composer install'
/bin/bash

