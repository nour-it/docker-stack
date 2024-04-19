IMAGES     := $(shell sudo docker images -q)
CONTAINERS := $(shell sudo docker ps -aq)

build:
	sudo docker-compose up --build --remove-orphans

up:
	sudo docker-compose up --remove-orphans

down:
	sudo docker-compose down

clean:
	sudo docker stop $(CONTAINERS)
	sudo docker rm $(CONTAINERS)

destroy:
	sudo docker stop $(CONTAINERS) || \
	sudo docker rm $(CONTAINERS) || \
	sudo docker rmi $(IMAGES)