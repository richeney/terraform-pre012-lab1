resource "azurerm_resource_group" "lab1" {
  name     = "terraform-lab1"
  location = "West Europe"

  tags {
    environment = "training"
  }
}

resource "azurerm_storage_account" "lab1sa" {
  name                     = "richeneyterraformlab1"
  resource_group_name      = "${azurerm_resource_group.lab1.name}"
  location                 = "westeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
