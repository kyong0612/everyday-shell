# include .env
NOW := $(shell date +"%Y%m%d")


PHOBY: today
today:
	@echo "Today is ${NOW}"
	@touch docs/${NOW}.md

PHOBY: up
up:
	@docker compose up -d

PHOBY: reset
reset:
	@docker compose down
	@-docker image rm everyday-shell-everyday-shell
	@docker compose build --no-cache
	@docker compose up -d

PHOBY: bash
bash:
	docker compose exec -it --user root everyday-shell bash 
