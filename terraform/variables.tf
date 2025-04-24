variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "tfstate-rg"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
  default     = "tfstateaccount"
}

variable "ml_workspace_name" {
  description = "Name of the Machine Learning Workspace"
  type        = string
  default     = "mlworkspace"
}

variable "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  type        = string
  
}

variable "app_insights_name" {
  description = "Name of the Application Insights"
  type        = string
  default     = "appinsights"
}