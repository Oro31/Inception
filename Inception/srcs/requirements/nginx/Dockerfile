FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR /home/srcs/

COPY ./tools/. .

RUN apt-get update && apt-get install -y \
	nginx \
	openssl \
	vim \
	&& mkdir -p /etc/nginx/ssl \
	&& mv rvalton.42.fr.conf /etc/nginx/sites-available/ \
	&& mv ssl_key/rvalton.42.fr.key.pem /etc/nginx/ssl/ \
	&& mv ssl_key/rvalton.42.fr-x509.crt /etc/nginx/ssl/ \
	&& ln -s /etc/nginx/sites-available/rvalton.42.fr.conf /etc/nginx/sites-enabled/ \
	&& rm -f /etc/nginx/sites-enabled/default \
	&& nginx -t

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
