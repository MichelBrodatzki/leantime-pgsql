FROM leantime/leantime:3.9.8

USER root
RUN apk add --no-cache libpq libpq-dev && \
    docker-php-ext-install pdo_pgsql && \
    apk del libpq-dev
USER www-data
