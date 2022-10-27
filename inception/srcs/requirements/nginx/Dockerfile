FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR ./

RUN apt-get update && apt-get install -y \
	nginx \
	openssl \
	&& nginx -t

EXPOSE 80 443
