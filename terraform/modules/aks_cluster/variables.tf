variable "name" {
  description = "Name of the AKS Cluster"
  type        = string
}

variable "location" {
  description = "Azure region for the AKS Cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}