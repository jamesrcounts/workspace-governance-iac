default: plan

# Default module because we only have one in this repo
module := workspaces

SECRETS := ./$(module)/terraform.secrets.auto.tfvars

$(SECRETS):
	@echo "github_pat=\"${GH_TOKEN}\""                          > $(SECRETS)
	@echo "tfe_token=\"${TFE_TOKEN}\""                         >> $(SECRETS)
	@echo "aws_access_key_id=\"${AWS_ACCESS_KEY_ID}\""         >> $(SECRETS)
	@echo "aws_secret_access_key=\"${AWS_SECRET_ACCESS_KEY}\"" >> $(SECRETS)
	@echo "azuredevops_pat=\"${AZDO_PERSONAL_ACCESS_TOKEN}\""  >> $(SECRETS)
	@echo "azuredevops_url=\"${AZDO_ORG_SERVICE_URL}\""        >> $(SECRETS)

docs:
	cd $(module) && terraform-docs markdown document --output-file README.md --output-mode inject .

fmt:
	cd $(module) && terraform fmt -recursive

# Example: make init module=workspaces
init:
	cd $(module) && \
		terraform init && \
		terraform providers

# Example: make upgrade module=workspaces
upgrade:
	cd $(module) && terraform init -upgrade

# Example: make validate module=workspaces
validate:
	cd $(module) && terraform validate

# Example: make plan module=workspaces
plan: $(SECRETS) fmt docs validate
	cd $(module) && terraform plan
	rm $(SECRETS)