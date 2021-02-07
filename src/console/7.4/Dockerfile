# vim:ts=4:sw=4:ai:et

ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

ARG LIBXDIFF_VERSION=0.23
ENV LIBXDIFF_VERSION=${LIBXDIFF_VERSION}

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
        apt-utils \
        apt-transport-https
RUN apt install -y \
        bash \
        bash-completion \
        ca-certificates \
        curl \
        diffutils \
        git \
        git-core \
        bash-completion \
        git-email \
        git-lfs \
        gnupg \
        grep \
        gzip \
        imagemagick \
        less \
        libjpeg-turbo8 \
        lsof \
        msmtp \
        mysql-client \
        nano \
        netcat \
        npm \
        openssh-client \
        openssl \
        patch \
        php \
        pv \
        python3 \
        rsync \
        ruby \
        sed \
        sudo \
        tar \
        vim \
        wget \
        zsh
RUN apt install -y \
        build-essential \
        libjpeg-turbo8-dev \
        libpng-dev \
        libsodium-dev \
        libxml2-dev \
        libxslt-dev \
        libzip-dev \
        php-dev \
        php-pear \
        ruby-dev
RUN curl http://www.xmailserver.org/libxdiff-${LIBXDIFF_VERSION}.tar.gz --output libxdiff-${LIBXDIFF_VERSION}.tar.gz \
    && gem install compass -V --backtrace --no-document \
    && gem sources --clear-all \
    && tar xzf libxdiff-${LIBXDIFF_VERSION}.tar.gz \
    && cd libxdiff-${LIBXDIFF_VERSION} \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf libxdiff-${LIBXDIFF_VERSION}* \
    && pecl install xdiff
RUN apt install -y \
        php-amqp \
        php-bcmath \
        php-ctype \
        php-curl \
        php-dom \
        php-fileinfo \
        php-gd \
        php-gmp \
        php-iconv \
        php-imagick \
        php-intl \
        php-json \
        php-mbstring \
        php-mysqli \
        php-opcache \
        php-apcu \
        php-imagick \
        php-redis \
        php-pdo \
        php-mysql \
        php-sqlite3 \
        php-phar \
        php-posix \
        php-simplexml \
        php-soap \
        php-sockets \
        php-tokenizer \
        php-xml \
        php-xmlreader \
        php-xmlwriter \
        php-xsl \
        php-zip
RUN pecl install 'xdebug-2.9.8' \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=1.10.19 \
    && npm config set unsafe-perm true \
    && sudo apt autoremove -y \
    && sudo apt autoclean -y \
    && sudo apt clean -y \
    && rm -rf \
        /tmp/* \
        /usr/lib/ruby/gems/*/cache/*.gem \
        /var/lib/apt/lists/*

COPY custom.ini /etc/php7/conf.d/custom.ini
COPY gitignore /etc/gitignore
COPY vimrc /etc/vim/vimrc
COPY dotgitconfig /var/www/.gitconfig
COPY grunt-daemon /usr/local/bin/grunt-daemon
COPY init /usr/local/bin/init
COPY wait-for /usr/local/bin/wait-for
COPY cmd.sh /usr/local/bin/cmd.sh
COPY grunt /usr/local/bin/grunt

EXPOSE 9001

WORKDIR /var/www/html

CMD cmd.sh
