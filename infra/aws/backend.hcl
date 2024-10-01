key    = "platform/terraform/infrastructure/terraform-${{ values.projectName | replace(" ", "-") | lower}}.tfstate"
bucket = "kubediscovery"
region = "us-east-1"
workspace_key_prefix = "develop"
