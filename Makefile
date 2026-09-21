COMPOSE := docker compose -f .devcontainer/compose.yaml

.PHONY: build
build:
	$(COMPOSE) build

.PHONY: start
start:
	$(COMPOSE) up -d

.PHONY: stop
stop:
	$(COMPOSE) down

.PHONY: restart
restart:
	$(COMPOSE) down
	$(COMPOSE) up -d

.PHONY: shell
shell:
	$(COMPOSE) exec website bash

.PHONY: site-build
site-build:
	$(COMPOSE) run --rm website npm run build
