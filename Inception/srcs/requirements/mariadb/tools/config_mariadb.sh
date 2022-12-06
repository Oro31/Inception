#!/bin/sh

/etc/init.d/mysql start

echo "CREATE USER IF NOT EXISTS '${MARIA_USER}'@'%' IDENTIFIED BY '${MARIA_PASSWORD}';" | mariadb -u root

echo "GRANT ALL ON *.* TO '${MARIA_USER}'@'%' IDENTIFIED BY '${MARIA_PASSWORD}'; FLUSH PRIVILEGES; " | mariadb -u root

echo "CREATE DATABASE IF NOT EXISTS ${MARIA_DATABASE}; GRANT ALL ON ${MARIA_DATABASE}.* TO '${MARIA_USER}'@'%' IDENTIFIED BY '${MARIA_PASSWORD}'; FLUSH PRIVILEGES;" | mariadb -u root

#mysql -u root ${MARIA_DATABASE} < exported.sql

#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIA_ROOT_PASSWORD}'; FLUSH PRIVILEGES;" | mariadb -u root

/etc/init.d/mysql stop

exec "$@"
