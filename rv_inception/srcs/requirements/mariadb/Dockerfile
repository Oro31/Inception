FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR /home/srcs/

COPY ./tools/. .

RUN apt-get update && apt-get install -y \
	mariadb-server \
	mariadb-client \
	openssl \
	vim \
	&& useradd rvalton \
	&& mv ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

