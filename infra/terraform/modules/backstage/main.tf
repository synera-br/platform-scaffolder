locals {
  object = jsondecode({
    kind = var.kind
    metadata = {
      namespace   = var.namespace
      name        = var.name
      description = var.description
      tags        = var.tags
      labels      = var.labels
    }
    spec = {
      type      = var.type
      lifecycle = var.environment
      owner     = var.owner
      system    = var.system
    }
  })
}
