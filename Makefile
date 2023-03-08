DOCKER_COMPOSE_SETTINGS  = --project-name ${USER}_sftpgo --env-file sftpgo.env -f sftpgo-docker-compose.yml

docker-build:
	docker-compose $(DOCKER_COMPOSE_SETTINGS) build

docker-up:
	docker-compose $(DOCKER_COMPOSE_SETTINGS) up -d --remove-orphans
	
docker-down:
	docker-compose $(DOCKER_COMPOSE_SETTINGS) down
	
docker-logs:
	docker-compose $(DOCKER_COMPOSE_SETTINGS) logs -f

