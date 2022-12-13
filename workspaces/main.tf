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

 