RAILS=app

help:
	cat Makefile

init: build

build:
	docker-compose -f docker-compose.yml -f docker-compose-dev.yml build

up:
	docker-compose up

serve: sync-start
	docker-compose -f docker-compose.yml -f docker-compose-dev.yml up

down:
	docker-compose down

bundle:
	docker-compose run --rm $(RAILS) bundle install

sync-start:
	docker-sync start