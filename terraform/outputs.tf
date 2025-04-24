output "resource_group_name" {
  value = module.resource_group.name
}

output "storage_account_id" {
  value = module.storage_account.id
}

output "ml_workspace_id" {
  value = module.machine_learning_workspace.id
}

output "aks_cluster_id" {
  value = module.aks_cluster.id
}

output "application_insights_instrumentation_key" {
  value = module.application_insights.instrumentation_key
}