FROM php:8.3-fpm-alpine

# Update app
# RUN apk update && apk add --no-cache tzdata

# Set timezone
# ENV TZ="Asia/Manila"

# RUN apk add --update --no-cache autoconf g++ make openssl-dev
# RUN apk add libpng-dev
# RUN apk add libzip-dev
# RUN apk add --update linux-headers

# RUN docker-php-ext-install gd
# RUN docker-php-ext-install zip
# RUN docker-php-ext-install bcmath
# RUN docker-php-ext-install sockets

RUN apk add supervisor

RUN docker-php-ext-install pdo pdo_mysql pcntl

COPY ./docker/horizon/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./docker/horizon/horizon.conf /etc/supervisor/conf.d/horizon.conf

# Create a group and user
RUN addgroup -S appgroup && adduser -S horizon -G appgroup
USER horizon

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
