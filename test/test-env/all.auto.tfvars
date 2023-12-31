location = "westus2"
tags = {
  customerId       = "adv"
  region           = "westus2"
  project          = "panama"
  serviceNameId    = "tbd"
  implementationId = "i001"
  environment      = "sbx"
  #subscriptionName = "Azure subscription 1"
  criticality      = "low"
  DR               = "low"
}
#isCreated                       = true
storage_account_name                            = "adamainthub0279"
storage_account_tier                    = "Standard"
storage_account_kind                    = "StorageV2"
storageaccount_replication_type        = "LRS"
allow_nested_items_to_be_public = true
public_network_access_enabled   = true
delete_retention_policy_days    = 7
data_factory_name = "datafactory"
keyvault_name = "keyvault"
purge_protection_enabled = "false"
keyvault_sku_name = "standard"