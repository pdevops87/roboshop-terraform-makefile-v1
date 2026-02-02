# Makefile

git:
	@echo "Pulling latest code from Git..."
	git pull



dev-apply:
    @echo "initialize terraform......"
    terraform init -backend-config=env-dev/state.tfvars
    @echo "create a resources in cloud vendor aws........"
    terraform apply -var-file=env-dev/main.tfvars -auto-approve

#
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




