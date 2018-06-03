FROM php:7.0-apache
COPY ./configs/php.ini /usr/local/etc/php/
COPY ./www /var/www/html/
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www/html/
EXPOSE 80