# Use PHP 7.1.18 with apache
FROM php:7.1.18-apache

# Get update list & upgrade
RUN apt-get update && apt-get upgrade -y

# Install php extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli 

# Enable apache rewrite_mode 
RUN a2enmod rewrite

# Copy php ini file
# COPY configs/php.ini /usr/local/etc/php/

# Source folder
# COPY --chown=www-data:www-data www/ /var/www/html/

# Expose port 80
# EXPOSE 80