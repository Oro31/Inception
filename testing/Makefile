all:
	mkdir -p /home/rvalton/data/wp_data
	mkdir -p /home/rvalton/data/db_data

build:
	sudo docker-compose build \
	&& sudo docker-compose ps

up:
	sudo docker-compose up \
	&& sudo docker-compose ps

down:
	sudo docker-compose down \
	&& sudo docker-compose ps

ps:
	sudo docker-compose ps

cclean:
	sudo docker-compose down

fclean:
	sudo rm -rf /home/rvalton/data/wp_data/*
	sudo rm -rf /home/rvalton/data/db_data/*

re:
	make down
	make all
