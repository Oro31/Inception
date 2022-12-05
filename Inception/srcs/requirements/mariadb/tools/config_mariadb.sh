#!/bin/sh

/etc/init.d/mysql start

echo "CREATE USER IF NOT EXISTS 'rvalton'@'%' IDENTIFIED BY 'password';" | mariadb -u root

echo "GRANT ALL ON *.* TO 'rvalton'@'%' IDENTIFIED BY 'password'; FLUSH PRIVILEGES; " | mariadb -u root

echo "CREATE DATABASE IF NOT EXISTS mariadb; GRANT ALL ON mariadb.* TO 'rvalton'@'%' IDENTIFIED BY 'password'; FLUSH PRIVILEGES;" | mariadb -u root

exec "$@"
