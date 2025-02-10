/*
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
*/
resource "azurerm_resource_group" "example" {
  name = var.AZURE_RESOURCE_GROUP_NAME
  location = var.rg_location
}


