output "name" {
  value = local.yaml_configs.name
}

output "tags" {
  value = local.yaml_configs.tags
}

output "provider" {
  value = local.yaml_configs.provider
}

output "region" {
  value = local.region
}

output "ascode" {
  value = module.ascode.cluster
}
