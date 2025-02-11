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
  for_each = { for env in var.environments : env => env }
  name     = "${var.prefix}-${each.value}"
  location = var.location
}
