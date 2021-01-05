FROM php:8.0-cli-alpine

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html

COPY . /var/www/html

CMD [ "./bench.sh" ]