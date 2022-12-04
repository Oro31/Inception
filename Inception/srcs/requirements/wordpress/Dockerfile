FROM debian:buster

MAINTAINER rvalton <rvalton@student.42.fr>

WORKDIR /home/srcs

COPY ./tools/. .

RUN apt-get update && apt-get install -y \
	openssl \
	php-fpm \
	php-mysql \
	vim \
	&& mkdir -p /var/www/rvalton.42.fr \
	&& chown -R www-data:www-data /var/www/rvalton.42.fr \
	&& chmod -R 755 /var/www/rvalton.42.fr \
	&& cp -ruf /home/srcs/wordpress /var/www/rvalton.42.fr \
	&& mv /home/srcs/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

ENTRYPOINT ["./config_wordpress.sh"]

CMD ["php-fpm7.3", "--nodaemonize"]
