resource "azurerm_resource_group" "rg-ado" {
  name     = "rg-ado-uks-01"
  location = "UK South"
}

resource "azurerm_storage_account" "example" {
  name                     = "sastorageexample"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}