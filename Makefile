COMPOSE := docker compose -f .devcontainer/compose.yaml
BRANCH  := source

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

.PHONY: fmt
fmt:
	npm run fix

.PHONY: check
check:
	npm run check

.PHONY: deploy
deploy: fmt check
	npm run build
	git add -A
	@if git diff --cached --quiet; then \
		echo "Nothing to commit"; \
	else \
		git commit -m "Deploy site ($$(date '+%Y-%m-%d %H:%M'))"; \
	fi
	git push origin $(BRANCH)
	@echo "Pushed to $(BRANCH) — GitHub Actions is deploying to https://guillaume.barillot.me"
