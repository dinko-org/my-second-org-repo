resource "azurerm_resource_group" "prod" {
  name     = "dinkol-tf-rg-prod"
  location = "eastus"
}

resource "azurerm_resource_group" "test" {
  name     = "dinkol-tf-rg-test"
  location = "eastus"
}

resource "azurerm_resource_group" "dev" {
  name     = "dinkol-tf-rg-dev"
  location = "eastus"
}

resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.rg_location
}

