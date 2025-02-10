resource "azurerm_resource_group" "example" {
  name     = "dinkol-tf-rg"
  location = "eastus"
}

resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.rg_location
}
