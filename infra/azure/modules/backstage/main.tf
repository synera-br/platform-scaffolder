
data "http" "send_data" {
  url = var.url
  method = "POST"

  request_body = jsonencode({"provider": "${var.cloudProvider}" })

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