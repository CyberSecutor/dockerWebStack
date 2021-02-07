FROM nginx:alpine

ENV APP_ROOT=/var/www/html
ENV PHP_FPM_HOST=php-fpm
ENV PHP_FPM_PORT=9000

COPY nginx /etc/nginx

WORKDIR /var/www/html

EXPOSE 80

CMD ["/bin/sh", "-c", "export DOLLAR='$' && envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
