terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  use_oidc = true
  resource_provider_registrations  = "core"
  features {}
}
