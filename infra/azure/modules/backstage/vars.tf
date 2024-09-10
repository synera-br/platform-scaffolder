
variable "url" {
  type        = string
  default     = "https://platform-catalog.synera.com.br/api/backstage"
  description = "Url to send cloud provider"
}

variable "cloudProvider" {
  type        = string
  description = "Name of cloud provider"
}