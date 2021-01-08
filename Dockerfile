FROM php:8.0-apache-buster

RUN docker-php-ext-install pdo_mysql

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN echo 'variables_order = "EGPCS"' >> "$PHP_INI_DIR/php.ini"

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80