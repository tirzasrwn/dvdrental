all: docker_stop docker_build docker_start
	echo "Finished!"
docker_build:
	- docker rmi dvdrental-postgres:latest
	docker build . -t dvdrental-postgres
docker_start:
	docker run --restart unless-stopped --name dvdrental-postgres -p 5432:5432 -d dvdrental-postgres
	# Use this if you want to save changes in database.
	# docker run --restart unless-stopped --name dvdrental-postgres -p 5432:5432 -v ./data/postgres/:/var/lib/postgresql/data -d dvdrental-postgres
docker_stop:
	- docker stop dvdrental-postgres
	- docker rm dvdrental-postgres

