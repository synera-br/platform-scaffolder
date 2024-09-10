# output "entity_json" {
#   value       = local.object
#   description = "The JSON representation of the Backstage Entity"
# }

output "status_response" {
  value       = data.http.send_data.status_code
  description = "The JSON representation of the Backstage Entity"
}