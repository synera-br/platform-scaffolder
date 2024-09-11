

data "http" "send_data" {
  url    = "https://platform-catalog.synera.com.br/api/backstage"
  method = "POST"

  request_body = jsonencode({ "provider" : "azure" })

  request_headers = {
    Accept        = "application/json"
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