A ready to use Docker box with PHP 7.2 (latest stable version), MariaDB 10.1, PhpMyAdmin, Nginx, Redis, Memcached, xDebug, PHPUnit 


Create a new PHP project
------
```sh
git clone https://github.com/rakodev/docker-compose-php.git
cd docker-compose-php/
```

Install Environement (Docker containers, Vendors)
-----
```sh
sh ./setup.sh
```

Your project is ready there
-----
[http://localhost:8080/](http://localhost:8080/)


Run PHPUnit Tests
------
```sh
docker-compose exec php-fpm-app bash -c 'cd /application/app && ./vendor/bin/phpunit'
```

Code Coverage
-----
```sh
docker-compose exec php-fpm-app bash -c 'cd /application/app && ./vendor/bin/phpunit --coverage-html tests/coverage'
```
##### See your code coverage result here
[http://localhost:8081/](http://localhost:8081/)


Good to know - Tips
-----
##### Dump Autoload
```sh
docker-compose exec --user www-data php-fpm-app bash -c 'cd /application/app && composer dump-autoload -o'
```