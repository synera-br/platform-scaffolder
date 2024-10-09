
module "ascode" {
  source = "git::https://github.com/kubediscovery/platform-infrastructure.git//modules/aws/eks_cluster?ref=v0.0.1"

  project_name = local.yaml_configs.name
  cidr_block   = local.yaml_configs.cidr
  tags         = local.tags
  region       = local.region
}
