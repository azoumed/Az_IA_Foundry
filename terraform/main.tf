provider "azurerm" {
  features {}
  subscription_id = "b2e9330a-f79d-4e94-b142-ab54bfc83b3a"
  client_id       = "a2fa39c8-59f9-4230-b9ba-43eaa0cd6268"
  client_secret   = "e0d68510-65bd-4755-a7c6-4e91fedf58d6"
  tenant_id       = "58ca8011-732b-4119-9235-3bed67fcc374"
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
  application_insights_id = module.application_insights.id
  key_vault_id        = var.key_vault_id
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