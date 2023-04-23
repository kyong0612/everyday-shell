# include .env
NOW := $(shell date +"%Y%m%d")


PHOBY: today
today:
	@echo "Today is ${NOW}"
	@touch doc/${NOW}.md
	