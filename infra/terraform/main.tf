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

module "identity" {
  source         = "./modules/idm"
  tags           = local.labels
  name           = local.name
  location       = var.location
  resource_group = module.resource_group.name
}

module "private_dns" {
  source         = "./modules/private_dns"
  tags           = local.labels
  name           = local.private_domain
  resource_group = module.resource_group.name
}

module "log_analytics" {
  source         = "./modules/law"
  tags           = local.labels
  name           = local.name
  resource_group = module.resource_group.name
  identity = {
    type         = "UserAssigned"
    identity_ids = [module.identity.id]
  }
  sku               = var.law_sku
  retention_in_days = var.retention_in_days
}


module "entity_rsg" {
  source   = "./modules/backstage"
  kind      = "resource"
  name      = module.resource_group.name
  namespace = "default"
  type      = "resource_group"
  owner     = var.projectOwner
  environment = "production"
  system    = var.projectName
}