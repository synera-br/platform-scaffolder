
module "ascode" {
  source = "git::https://github.com/kubediscovery/platform-infrastructure.git//modules/azure/aks_cluster?ref=aws"

  project_name = local.yaml_configs.name
  tags         = local.tags
  region       = local.region
}
