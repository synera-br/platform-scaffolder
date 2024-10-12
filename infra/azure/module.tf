

module "ascode" {
  source = "git::https://github.com/kubediscovery/platform-infrastructure.git//modules/platform/labs/azure?ref=aws"

  project_name = local.yaml_configs.name
  cidr_block   = local.yaml_configs.cidr
  tags         = local.tags
  region       = local.region
}