# This file is modified from the project https://code.shin.company/php
# Author:  Shin <shin@shin.company>, 6767 Ltd.
# Original license: https://code.shin.company/php/blob/main/LICENSE
# Initialise-Flarum-DB License: GPL-3.0-or-later
################################################################################

ARG BASE_IMAGE=shinsenter/phpfpm-apache
ARG IMAGE_SUFFIX="-tidy"
ARG PHP_VERSION=8.2

# base image
FROM ${BASE_IMAGE}:php${PHP_VERSION}${IMAGE_SUFFIX}

# sets web server root path
ENV APACHE_DOCUMENT_ROOT="/public"


# adds config files
ADD ./root/ /
# We run add_flarum on startup which runs install based on this
COPY ./FlarumConfig.yaml /var/www/BaseFlarumConfig.yaml

# recommended settings
ENV PHP_MEMORY_LIMIT=512M
ENV PHP_POST_MAX_SIZE=100M
ENV PHP_UPLOAD_MAX_FILE_SIZE=10M
ENV PHP_OPEN_BASEDIR="/var/www/html:/etc/ssl:/tmp"

# Make add_flarum executable
RUN chmod +x /startup/add_flarum
RUN bash /startup/add_flarum