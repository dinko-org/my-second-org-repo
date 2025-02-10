resource "azurerm_storage_account" "example" {
  name                     = "sa${random_string.storage_suffix.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
/*
resource "azurerm_storage_account" "newsa" {
  name                     = "oknidlsa"
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
*/
resource "random_string" "storage_suffix" {
  length  = 3
  upper   = false
  special = false
  number  = true
}
