terraform {
  required_version = ">= 1.9.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "shared"
    storage_account_name = "terraformvars"
    container_name       = "terraform"
    key                  = "platform.tfstate"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
