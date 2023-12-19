terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.54.0"
    }
  }
  #backend "azurerm" {}
}

# Define the provider configuration
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}
module "storage-account"{
    source = "../../modules/storage-account"
    resource_group_name = var.resource_group_name
    storage_account_name = var.storage_account_name
    location = var.location
    storage_account_tier = var.storage_account_tier
    storage_account_kind = var.storage_account_kind
    storageaccount_replication_type = var.storageaccount_replication_type
    delete_retention_policy_days = "7"
    tags  = {}
}
module "data-factory"{
    source = "../../modules/data-factory"
    data_factory_name                 = var.data_factory_name
    location            = var.location
    resource_group_name = var.resource_group_name
} 
module "key-vault"{
    source = "../../modules/key-vault"
    purge_protection_enabled                 = var.purge_protection_enabled
    location            = var.location
    resource_group_name = var.resource_group_name
    keyvault_name       = var.keyvault_name
    keyvault_sku_name  = var.keyvault_sku_name
    soft_delete_retention_days = var.delete_retention_policy_days
} 