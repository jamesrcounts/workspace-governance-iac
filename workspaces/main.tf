/**
 * # Workspace Governance
 *
 * Workspaces connect a GitHub repository to one or more Terraform Cloud Workspace(s).
 * Each Terraform Cloud Workspace connects an Azure Environment.  An Azure Environment
 * can be an Azure Subscription or resource group, or collections of either type of scope.
 *
 * Other combinations _are_ possible!  For example you could use GCP
 * instead, or Azure DevOps.  But you would have to write your own module for
 * that ;).
 *
 * This module implements the specific pattern:
 *  GitHub <=> Terraform Cloud Workspace(s) <=> Azure Scope(s)
 */

data "azurerm_subscription" "current" {}

## Root Organization & Workspace
module "root" {
  source = "./modules/root"

  github_pat        = var.github_pat
  organization_name = "navy-nickel"
  subscription      = data.azurerm_subscription.current
  tfe_token         = var.tfe_token

  ado = {
    token = var.azuredevops_pat
    url   = var.azuredevops_url
  }

  aws = {
    access_key_id     = var.aws_access_key_id
    secret_access_key = var.aws_secret_access_key
  }
}

# TODO
# - Root Module - Bootstrap Terraform Cloud & Manage Azure Subscription
# - Hybrid Module - Manage multiple RGs, Multiple Workspaces & Azure DevOps
# - Basic Module - Manage one RG, One Workspace
