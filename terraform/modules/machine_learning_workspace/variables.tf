variable "name" {
  description = "Name of the Machine Learning Workspace"
  type        = string
}

variable "location" {
  description = "Azure region for the Machine Learning Workspace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "storage_account_id" {
  description = "ID of the Storage Account"
  type        = string
}

variable "key_vault_id" {
  description = "The ID of the Key Vault to associate with the Machine Learning Workspace"
  type        = string
}

variable "application_insights_id" {
  description = "The ID of the Application Insights resource."
  type        = string
}