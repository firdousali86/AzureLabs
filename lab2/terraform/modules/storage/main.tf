resource "azurerm_storage_account" "storage" {
  name                     = "storacct${random_string.unique_id.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_string" "unique_id" {
  length  = 6
  special = false
}
