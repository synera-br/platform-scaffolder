output "created" {
  value       = local.created_at
  description = "Created time"
}

output "managed" {
  value       = local.managed_by
  description = "Manage resources"
}


output "tags" {
  value       = local.tags
  description = "Tags to filter resources"
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

output "entity_rsg" {
  value = jsonencode(module.entity_rsg.entity_json)
  description = "Resource Group Backstage entity"
}

output "resource_group" {
  value = module.resource_group.raw
  description = "Resource Group Backstage entity"
}

output "identity" {
  value = module.identity.raw
  description = "Resource Group Backstage entity"
}

output "private_dns" {
  value = module.private_dns.raw
  description = "Resource Group Backstage entity"
}

output "log_analytics" {
  value = module.log_analytics.raw
  description = "Resource Group Backstage entity"
}