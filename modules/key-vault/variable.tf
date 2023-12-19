variable "keyvault_name" {
  description = "The key vault name."
  type        = string
}
variable "purge_protection_enabled" {
  description = "A mapping of tags to assign to the resource."
  type        = string
}
variable "keyvault_sku_name" {
  description = "A mapping of tags to assign to the resource."
  type        = string
}
variable "resource_group_name" {
  description = "The location."
  type        = string
}
variable "location" {
  description = "The location."
  type        = string
}
variable "soft_delete_retention_days" {
  description = "The location."
  type        = string
}