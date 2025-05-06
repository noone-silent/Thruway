FROM composer:2 AS composer

FROM php:8.4

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN set -eux \
    && apt-get update \
    && apt-get install -yq --no-install-recommends zip unzip git