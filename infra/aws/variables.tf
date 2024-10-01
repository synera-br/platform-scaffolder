variable "tags" {
  type = object({
    PartOf  = string
    Owner   = string
    Support = string
  })
  description = "VPC ID"
  default = {
    PartOf  = "platform"
    Owner   = "owner"
    Support = "support"
  }
}

variable "project_name" {
  type        = string
  description = "value to be used as prefix for all resources"
  default     = "${{ values.projectName | replace(" ", "-") | lower}}"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "created_at" {
  type        = string
  default     = "${{ values.createdAt | replace(" ", "-") | lower}}"
  description = "Data de criação do recurso"
}

variable "projectOwner" {
  type        = string
  default     = "${{ values.userName | lower}}"
  description = "Owner of project"
}

variable "labels" {
  type        = map(string)
    {%- if values.labels %}
  default     =  {
    {% for key, value in values.labels %}
      ${{- key }} = "${{ value }}"
    {% endfor -%}
  }
  {%- else  %}  
  default     =  {}
  {%- endif  %}
  description = "Labels to registry in Backstage and Cloud resources"
}