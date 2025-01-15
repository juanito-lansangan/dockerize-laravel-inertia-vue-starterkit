FROM php:8.3-fpm-alpine

RUN apk add supervisor

RUN docker-php-ext-install pdo pdo_mysql pcntl

COPY ./docker/horizon/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./docker/horizon/horizon.conf /etc/supervisor/conf.d/horizon.conf

# Create a group and user
RUN addgroup -S appgroup && adduser -S horizon -G appgroup
USER horizon

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
