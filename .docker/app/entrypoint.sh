#!/usr/bin/env bash

composer install

chmod 775 storage -R
chmod 775 bootstrap/cache

php artisan key:generate
php artisan migrate

php-fpm
