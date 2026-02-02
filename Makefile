# Makefile
.PHONY: help git dev-apply

help: ## Display this help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z0-9_-]+:.*##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

git: ## Pull latest code from git repo
    git pull

dev-apply: ## Terraform init & apply for dev environment
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -var-file=env-dev/main.tfvars -auto-approve




# dev-destroy:  ##  dev environment to initialize and destroy a resources of terraform
#
#     terraform init -backend-config=env-dev/state.tfvars
#     terraform destroy -var-file=env-dev/main.tfvars -auto-approve
#
#
#
# prod-apply:  ##  dev environment to initialize and create a resources of terraform
#
#     terraform init -backend-config=env-dev/state.tfvars
#     terraform apply -var-file=env-dev/main.tfvars -auto-approve
#
#
# prod-destroy:  ## dev environment to initialize and destroy a resources of terraform
#
#     terraform init -backend-config=env-dev/state.tfvars
#     terraform destroy -var-file=env-dev/main.tfvars -auto-approve




