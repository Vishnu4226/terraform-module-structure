variable "storage_account_name" {
  description = "The location."
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
variable "storage_account_tier" {
  description = "The location."
  type        = string
}
variable "storage_account_kind" {
  description = "The location."
  type        = string
}
variable "storageaccount_replication_type" {
  description = "The location."
  type        = string
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
variable "delete_retention_policy_days" {
  description = "A mapping of tags to assign to the resource."
  type        = number
}
