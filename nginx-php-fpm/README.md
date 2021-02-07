# Introduction

This is an NGINX FastCGI implementation for PHP-FPM.

# Usage

Supplying the `APP_ROOT` environment variable (default `/var/www/html`) informs
the service where it should look for the root of your app. 

Supplying the `PHP_FPM_HOST` and `PHP_FPM_PORT` environment variables allows the
service to connect to a different PHP-FPM instance.
