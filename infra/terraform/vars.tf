##############################
### Default configurations ###
variable "name" {
  type        = string
  default     = "platfrom"
  description = "Name of Azure resource"
}

variable "name_id" {
  type        = number
  default     = 00003
  description = "ID to generate a different resources"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "The Azure region to deploy resources"

  validation {
    condition = contains(["East US", "West US", "Brazil South", "Brazil"], var.location)

    error_message = "The location available are: 'East US', 'West US', 'Brazil South', and 'Brazil'"
  }
}

variable "projectName" {
  type        = string
  default     = "${{ values.projectName | replace(" ", "-") | lower}}"
  description = "Project name to create Cloud resources"
}

variable "projectOwner" {
  type        = string
  default     = "${{ values.userName | lower}}"
  description = "Owner of project"
}

variable "tags" {
  type        = list(string)
  default     = ["platform"]
  description = "Tags to registry in Backstage and Cloud resources"
}

variable "labels" {
  type        = map(string)
  default     =  {}
  description = "Labels to registry in Backstage and Cloud resources"
}
