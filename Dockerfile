FROM edbizarro/gitlab-ci-pipeline-php:7.1-alpine
LABEL maintainer="Paul van Zyl"

RUN sudo apk update

RUN sudo apk add automake alpine-sdk nasm autoconf build-base zlib zlib-dev libpng libpng-dev libwebp libwebp-dev libjpeg-turbo libjpeg-turbo-dev imagemagick

RUN sudo npm install -g dploy

WORKDIR /var/www/html
