build:
	docker compose build cli
kill-rm:
	docker compose kill
	docker compose rm 
shell:
	docker compose run --entrypoint='' --rm cli bash

base-init:
	docker compose run --rm -w /src/iac/base cli terraform init 
base-plan:
	docker compose run --rm -w /src/iac/base cli terraform plan
base-apply:
	docker compose run --rm -w /src/iac/base cli terraform apply
base-destroy:
	docker compose run --rm -w /src/iac/base cli terraform destroy
dev-init:
	docker compose run --rm -w /src/iac/env/dev cli terraform init
dev-plan:
	docker compose run --rm -w /src/iac/env/dev cli terraform plan
dev-apply:
	docker compose run --rm -w /src/iac/env/dev cli terraform apply
dev-destroy:
	docker compose run --rm -w /src/iac/env/dev cli terraform destroy
