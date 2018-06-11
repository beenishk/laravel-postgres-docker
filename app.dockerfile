FROM php:7.0.4-fpm

RUN echo "deb http://ftp.de.debian.org/debian stretch main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y libmcrypt-dev \
	php7.0-pgsql libpq-dev --no-install-recommends \
    && docker-php-ext-install mcrypt pdo_pgsql