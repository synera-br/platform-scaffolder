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
