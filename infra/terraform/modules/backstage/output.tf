output "entity_json" {
  value       = jsonencode(local.object)
  description = "The JSON representation of the Backstage Entity"
}