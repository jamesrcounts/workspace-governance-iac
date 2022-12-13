default: plan

# Default module because we only have one in this repo
module := "workspaces"

docs:
	cd $(module) && terraform-docs markdown document --output-file README.md --output-mode inject .

fmt:
	cd $(module) && terraform fmt -recursive

# Example: make init module=workspaces
init:
	cd $(module) && terraform init

# Example: make upgrade module=workspaces
upgrade:
	cd $(module) && terraform init -upgrade

# Example: make validate module=workspaces
validate:
	cd $(module) && terraform validate

# Example: make plan module=workspaces
plan: fmt docs validate
	cd $(module) && terraform plan