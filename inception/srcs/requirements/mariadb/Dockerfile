FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR ./

RUN apt-get update && apt-get install -y \
	mariadb-server \
	mariadb-client \
	openssl

EXPOSE 80 443
