COMPOSE = docker compose
SERVICE = ruby
ARGS    = $(filter-out $@,$(MAKECMDGOALS))

.DEFAULT_GOAL := help
.PHONY: help up down run irb shell version clean

help: ## Muestra esta ayuda
	@grep -E '^[a-z]+:.*## ' $(MAKEFILE_LIST) | sed 's/:.*## /\t/' | expand -t 10

up: ## Levanta el contenedor en segundo plano
	$(COMPOSE) up -d

down: ## Baja y elimina el contenedor
	$(COMPOSE) down

run: ## Ejecuta un archivo:  make run leccion1.rb
	@test -n "$(ARGS)" || (echo "Uso: make run archivo.rb" && exit 1)
	$(COMPOSE) run --rm $(SERVICE) $(ARGS)

irb: ## Consola interactiva de Ruby
	$(COMPOSE) run --rm --entrypoint irb $(SERVICE)

shell: ## Abre una terminal dentro del contenedor
	$(COMPOSE) run --rm --entrypoint bash $(SERVICE)

version: ## Muestra la versión de Ruby
	$(COMPOSE) run --rm $(SERVICE) -v

clean: ## Baja todo y borra el volumen de gemas
	$(COMPOSE) down -v

# Evita que make trate los nombres de archivo como objetivos
%:
	@: