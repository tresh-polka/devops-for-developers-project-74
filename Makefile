.PHONY: ci

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

setup:
	docker-compose run --rm app make setup

test:
	docker-compose up --abort-on-container-exit

dev:
	docker-compose up

test-prod:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app