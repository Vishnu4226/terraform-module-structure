# Azure Provider configuration
provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "storage_account" {
  name                            = "var.storage_account_name${count.index+1}"
  count = 2
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = var.storage_account_tier
  account_kind                    = var.storage_account_kind
  account_replication_type        = var.storageaccount_replication_type
  allow_nested_items_to_be_public = true
  public_network_access_enabled   = true
  tags                            = var.tags

  blob_properties {
    delete_retention_policy {
      days = var.delete_retention_policy_days
    }
  }
}
#resource "azurerm_storage_container" "example" {
#  name                  = "vhds"
#  storage_account_name  = var.storage_account_name
#  container_access_type = "private"
#}