# locals {

#   object = {
#     kind = "Resource"
#     metadata = {
#       namespace   = var.namespace
#       name        = var.name
#       description = var.description
#       tags        = var.tags
#       labels      = var.labels
#     }
#     spec = {
#       type      = var.type
#       lifecycle = var.environment
#       owner     = var.owner
#       system    = var.system
#       dependsOn = var.dependsOn
#     }
#   }
# }

data "http" "send_data" {
  url = var.url
  method = "POST"

  request_body = jsonencode({"provider": "${{ parameters.cloudProvider }}" })

  request_headers = {
    Accept = "application/json"
    Authorization = "synera-br"
    
  }
}

resource "random_uuid" "validate" {
  lifecycle {
    precondition {
      condition     = contains([200, 201, 202, 204], data.http.send_data.status_code)
      error_message = "Status code invalid"
    }
  }
}