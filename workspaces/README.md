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

No required inputs.

## Optional Inputs

No optional inputs.

## Outputs

No outputs.

## Resources

No resources.

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (~> 1.3.6)

## Providers

No providers.

## Modules

No modules.

## Update Docs

Run this command:

```
terraform-docs markdown document --output-file README.md --output-mode inject .
```
<!-- END_TF_DOCS -->