DOCKER_COMPOSE ?= docker compose
PROJECT_NAME ?= stun_turn

.PHONY: up down restart logs ps

up:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) up -d

down:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) down

restart:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) restart

logs:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) logs -f

ps:
	$(DOCKER_COMPOSE) -p $(PROJECT_NAME) ps

