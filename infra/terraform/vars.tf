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
  default     =  {} //${{ values.labels | lower}}
  description = "Labels to registry in Backstage and Cloud resources"
}
