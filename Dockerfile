# Stage 1: Build
FROM php:8.2-fpm AS builder
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Stage 2: Final
FROM php:8.2-fpm
# Salin extension yang dah siap
COPY --from=builder /usr/local/lib/php/extensions /usr/local/lib/php/extensions
COPY --from=builder /usr/local/etc/php/conf.d/ /usr/local/etc/php/conf.d/

# Salin kod aplikasi
COPY . /var/www/html/

WORKDIR /var/www/html
