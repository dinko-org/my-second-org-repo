terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
}
provider "azurerm" {
  use_oidc = true
 
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dinko"
    storage_account_name = "tfstatedinko"
    container_name       = "terraform-state"
    key                  = "prod.terraform.tfstate"
  }
}
