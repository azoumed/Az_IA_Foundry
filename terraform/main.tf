provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/resource_group"
  name   = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source              = "./modules/storage_account"
  name                = var.storage_account_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}

module "machine_learning_workspace" {
  source              = "./modules/machine_learning_workspace"
  name                = var.ml_workspace_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  storage_account_id  = module.storage_account.id
}

module "aks_cluster" {
  source              = "./modules/aks_cluster"
  name                = var.aks_cluster_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}

module "application_insights" {
  source              = "./modules/application_insights"
  name                = var.app_insights_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}