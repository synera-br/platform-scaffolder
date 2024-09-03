locals {
    kind = (
    upper(substr(var.kind, 0, 1)) 
    + lower(substr(var.kind, 1, length(var.kind) - 1))
  )
  object = {
    kind = local.kind
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
  }
}
