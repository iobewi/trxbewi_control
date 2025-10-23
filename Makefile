# Makefile — setup host + env pour Compose non-root (avec remove udev)

.PHONY: build up down status bash

## Monte/arrête la stack
build:
	docker build -t iobewi:trxbewi_control .
up:
	docker compose -f compose.local.yaml up -d
status:
	docker compose ps
down:
	docker compose down
bash:
	docker compose exec trxbewi_control bash