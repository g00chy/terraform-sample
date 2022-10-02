build:
	docker compose build cli
kill-rm:
	docker compose kill
	docker compose rm 
shell:
	docker compose run --entrypoint='' --rm cli bash
init:
	docker compose run --rm cli terraform init 
plan:
	docker compose run --rm cli terraform init 
apply:
	docker compose run --rm cli terraform init 
