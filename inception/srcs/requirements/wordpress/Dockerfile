FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR ./

RUN apt-get update && apt-get install -y \
	openssl \
	php-fpm \
	wordpress

EXPOSE 80 443
