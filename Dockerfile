# Stage 1: Build (Kita compile extension kat sini)
FROM php:8.2-apache AS builder
RUN docker-php-ext-install mysqli

# Stage 2: Final (Kita cuma ambil apa yang perlu)
FROM php:8.2-apache
# Copy extension yang dah siap dicompile tadi
COPY --from=builder /usr/local/lib/php/extensions /usr/local/lib/php/extensions
COPY --from=builder /usr/local/etc/php/conf.d/docker-php-ext-mysqli.ini /usr/local/etc/php/conf.d/

# Salin kod aplikasi
COPY . /var/www/html/

EXPOSE 80
