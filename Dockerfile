# Guna image php yang dah siap ada apache (senang sikit)
FROM php:8.2-apache

# Install extension untuk bagi PHP boleh borak dengan MariaDB/MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Salin kod kita masuk dalam folder web apache
COPY . /var/www/html/
