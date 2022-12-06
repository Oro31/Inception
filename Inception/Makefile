all:
	cd srcs \
	&& sudo docker-compose up -d \
	&& sudo docker-compose ps -a

build:
	cd srcs \
	&& sudo docker-compose build \
	&& sudo docker-compose up -d \
	&& sudo docker-compose ps -a

down:
	cd srcs \
	&& sudo docker-compose down \
	&& sudo docker-compose ps -a

ps:
	cd srcs \
	&& sudo docker-compose ps -a

re:
	make down
	make all
