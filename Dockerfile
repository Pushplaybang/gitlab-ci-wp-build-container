FROM edbizarro/gitlab-ci-pipeline-php:7.1-alpine
LABEL maintainer="Paul van Zyl"

USER root

RUN apk add --update --no-cache automake alpine-sdk nasm autoconf build-base zlib zlib-dev libpng libpng-dev libwebp libwebp-dev libjpeg-turbo libjpeg-turbo-dev

# imagick
RUN apk add --update --no-cache autoconf g++ imagemagick-dev libtool make pcre-dev \
  && pecl install imagick \
  && docker-php-ext-enable imagick \
  && apk del autoconf g++ libtool make pcre-dev

WORKDIR /var/www/html
