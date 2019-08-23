# Options
dockerenv ?= dev
PROJECT := hippocampe$(dockerenv)

################################################################################
# Copie des dists
$(shell test ! -f .env && cp .env.dist .env)
# Inclusion de l'environnement
include .env
export $(shell sed 's/=.*//' .env)
################################################################################
up:
	docker-compose up -d $(c)
build:
	docker-compose build $(c)

# Go to console
cli:
	docker-compose exec runner sh

# Tests
tests-bv:
	docker-compose exec -T runner selenium-side-runner -s http://chrome:4444/wd/hub --output-directory /app/out /app/sides/boutique-veterinaire.side
