<!-- BEGIN_TF_DOCS -->
# Workspace Governance

Workspaces connect a GitHub repository to one or more Terraform Cloud Workspace(s).
Each Terraform Cloud Workspace connects an Azure Environment.  An Azure Environment
can be an Azure Subscription or resource group, or collections of either type of scope.

Other combinations _are_ possible!  For example you could use GCP
instead, or Azure DevOps.  But you would have to write your own module for
that ;).

This module implements the specific pattern:
 GitHub <=> Terraform Cloud Workspace(s) <=> Azure Scope(s)

## Required Inputs

The following input variables are required:

### <a name="input_aws_access_key_id"></a> [aws\_access\_key\_id](#input\_aws\_access\_key\_id)

Description: Specifies the AWS access key ID for the AWS Terraform provider.

Type: `string`

### <a name="input_aws_secret_access_key"></a> [aws\_secret\_access\_key](#input\_aws\_secret\_access\_key)

Description: Specifies the AWS access key secret for the AWS Terraform provider.

Type: `string`

### <a name="input_azuredevops_pat"></a> [azuredevops\_pat](#input\_azuredevops\_pat)

Description: An Azure DevOps personal access token. Used to configure a variable group for the Azure DevOps Terraform Provider.

Type: `string`

### <a name="input_azuredevops_url"></a> [azuredevops\_url](#input\_azuredevops\_url)

Description: An Azure DevOps organization URL. Used to configure a variable group for the Azure DevOps Terraform Provider.

Type: `string`

### <a name="input_github_pat"></a> [github\_pat](#input\_github\_pat)

Description: A github personal access token to create the VCS connection.

Type: `string`

### <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token)

Description: A Terraform Cloud token to manage the organization.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region)

Description: The AWS region for Route53

Type: `string`

Default: `"us-west-1"`

## Outputs

No outputs.

## Resources

The following resources are used by this module:

- [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) (data source)

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (~> 1.3.6)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 3.35)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (3.35.0)

## Modules

The following Modules are called:

### <a name="module_root"></a> [root](#module\_root)

Source: ./modules/root

Version:

## Update Docs

Run this command:

```
terraform-docs markdown document --output-file README.md --output-mode inject .
```
<!-- END_TF_DOCS -->