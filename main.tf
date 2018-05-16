resource "azurerm_resource_group" "basics" {
  name     = "terraformbasics"
  location = "West Europe"

  tags {
    environment = "Training"
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = "richeneysa1976"
  resource_group_name      = "${azurerm_resource_group.basics.name}"
  location                 = "westeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}