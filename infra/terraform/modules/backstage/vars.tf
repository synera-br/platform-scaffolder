##############################
### Default configurations ###
variable "kind" {
  type        = string
  default     = "resource"
  description = "Kind of backstage entity"
}

variable "name" {
  type        = string
  description = "Name of backstage entity"
}

variable "namespace" {
  type        = string
  default     = "default"
  description = "Namespace of backstage entity"
}

variable "description" {
  type        = string
  default     = ""
  description = "Description of backstage entity"
}

variable "type" {
  type        = string
  default     = "cloud"
  description = "Type of backstage entity"
}

variable "owner" {
  type        = string
  description = "Owner of backstage entity"
}

variable "environment" {
  type        = string
  default     = "production"
  description = "Lifecycle of backstage entity"
}

variable "system" {
  type        = string
  description = "System of backstage entity"
}

variable "dependsOn" {
  type        = list(string)
  default     = []
  description = "System of backstage entity"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Tags of backstage entity"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels of backstage entity"
}

variable "url" {
  type        = string
  default     = "https://platform-catalog.synera.com.br/api/backstage"
  description = "Url to send cloud provider"
}

