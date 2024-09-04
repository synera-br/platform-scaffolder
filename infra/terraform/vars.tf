##############################
### Default configurations ###
variable "name" {
  type        = string
  default     = "${{ values.projectName | replace(" ", "-") | lower}}"
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


##############################
## Azure Private DNS #########

variable "private_domain" {
  type        = string
  default     = ""
  description = "Name to create a private dns zone"
}

##############################
## Azure Kubernetes Service ##

variable "dns_prefix" {
  type        = string
  default     = "internal"
  description = "DNS prefix to deploy with kubernetes"
}


##############################
## Log analytics workspace ###
variable "retention_in_days" {
  type        = number
  default     = 30
  description = "Number of days to retention the logs"
}

variable "law_sku" {
  type        = string
  default     = "PerGB2018"
  description = "Specifies the SKU of the Log Analytics Workspace"
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
    {%- if values.labels %}
  default     =  {
    {% for key, value in values.labels %}
      {{ key }} = {{ value }}
    {% endfor %}
  }
  {%- else  %}  
  default     =  {}
  {%- endif  %}
  description = "Labels to registry in Backstage and Cloud resources"
}
