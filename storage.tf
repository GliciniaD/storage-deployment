resource "azurerm_resource_group" "rg" {
  name     = "rg-ado-uks-01"
  location = "UK South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "sastorageexample"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}