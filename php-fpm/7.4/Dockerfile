# vim:ts=4:sw=4:ai:et

ARG ALPINE_VERSION=3.13
FROM alpine:${ALPINE_VERSION}

RUN apk add --no-cache \
        ca-certificates \
        icu \
        imagemagick \
        libintl \
        libjpeg-turbo \
        libpng \
        libressl \
        libsodium \
        libxml2 \
        libxslt \
        libzip \
        msmtp \
    && apk add --no-cache --virtual .build-deps \
        g++ \
        libc6-compat \
        make \
        php7-dev \
        php7-pear \
    && apk add --no-cache \
        php7-fpm \
        php7-amqp \
        php7-bcmath \
        php7-ctype \
        php7-curl \
        php7-dom \
        php7-fileinfo \
        php7-gd \
        php7-gmp \
        php7-iconv \
        php7-imagick \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqli \
        php7-opcache \
        php7-openssl \
        php7-pecl-apcu \
        php7-pecl-imagick \
        php7-pecl-redis \
        php7-pdo \
        php7-pdo_mysql \
        php7-pdo_sqlite \
        php7-phar \
        php7-posix \
        php7-simplexml \
        php7-soap \
        php7-sockets \
        php7-sodium \
        php7-tokenizer \
        php7-xml \
        php-xmlreader \
        php7-xmlwriter \
        php7-xsl \
        php7-zip \
        php7-zlib \
    && pecl install 'xdebug-2.9.8' \
    && apk del .build-deps \
    && rm -rf \
        /tmp/* \
        /var/cache/apk/* \
    && chmod 777 /var/log \
    && sed -i 's/^variables_order.*$/variables_order = "EGPCS"/g' /etc/php7/php.ini \
    && sed -i 's/^memory_limit.*$/memory_limit = 2048M/g' /etc/php7/php.ini \
    && sed -i 's/^display_errors.*$/display_errors = On/g' /etc/php7/php.ini

COPY custom.ini /etc/php7/conf.d/custom.ini
COPY php-fpm.conf /etc/php7/php-fpm.conf
COPY www.conf /etc/php7/php-fpm.d/www.conf

WORKDIR /var/www/html

EXPOSE 9000

CMD php-fpm7
