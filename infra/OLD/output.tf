output "managed" {
  value       = local.managed_by
  description = "Manage resources"
}

output "labels" {
  value       = local.labels
  description = "Labels to filter resources"
}

output "projectName" {
  value       = local.name
  description = "Project name"
}

output "projectOwner" {
  value       = local.owner
  description = "Project owner"
}

output "environment" {
  value       = local.name
  description = "Environment"
}

output "resource_group" {
  value       = module.resource_group.raw
  description = "Resource Group Backstage entity"
}

output "identity" {
  value       = module.identity.raw
  description = "Resource Group Backstage entity"
}

output "private_dns" {
  value       = module.private_dns.raw
  description = "Resource Group Backstage entity"
}

output "log_analytics" {
  value       = module.log_analytics.raw
  description = "Resource Group Backstage entity"
  sensitive   = true
}

output "kube_config_raw" {
  value     = local.kube.kube_config_raw
  sensitive = true
}

output "kubeconfig" {
  value       = yamlencode(local.kube.kube_config[0])
  description = "Kube config"
  sensitive   = true
}
