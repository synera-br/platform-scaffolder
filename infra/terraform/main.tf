//
locals {
  created_at  = formatdate("YYYY-MM-DD", timestamp())
  managed_by  = { "managed_by" : "terraform" }
  owner       = { "owner" : var.projectOwner }
  tags        = var.tags
  labels      = merge({ "created_at" : "${local.created_at}", "owner" : "${var.projectOwner}", "managed_by" : "terraform" }, var.labels)
  name_id     = format("%05d", var.name_id)
  name        = "${var.projectName}${local.name_id}"
  environment = "development"
}


module "resource_group" {
  source   = "./modules/rsg"
  tags     = local.labels
  name     = local.name
  location = var.location
}

module "entity_rsg" {
  kind      = "resource"
  name      = module.resource_group.name
  namespace = "default"
  type      = "resource_group"
  owner     = var.projectOwner
  lifecycle = "production"
  system    = var.projectName
}