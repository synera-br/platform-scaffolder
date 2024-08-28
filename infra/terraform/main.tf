//
locals {
  created_at = formatdate("YYYY-MM-DD", timestamp())
  managed_by = { "managed_by" : "terraform" }
  tags       = var.tags
  labels     = merge({ "created_at" : "${local.created_at}", "managed_by" : "terraform" }, var.labels)
  name       = var.projectName
  owner      = var.projectOwner
}
