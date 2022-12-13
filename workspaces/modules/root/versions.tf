terraform {
  required_version = "~> 1.3.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.35"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.39"
    }
  }
}