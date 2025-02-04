resource "azurerm_storage_account" "example" {
  name                     = "dinkotfstorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "testing"
  }
}

resource "azurerm_storage_container" "vm_files" {
  name = "tf-directory"
  #S storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
  #storage_account_name  = azurerm_storage_account.example.name
  storage_account_id    = azurerm_storage_account.example.id

}
