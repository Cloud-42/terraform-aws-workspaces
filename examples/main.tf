module "workspaces_directory_service_directory" {

  source         = "git::https://github.com/Cloud-42/terraform-aws-workspaces.git//directory_service_directory?ref=v0.1"
  directory_name = "dir.domain.io"
  directory_pass = random_password.workspaces_password.result

  vpc_info = {
    vpc_id     = module.vpc.vpc_id
    subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  }
}

module "workspaces" {

  source = "git::https://github.com/Cloud-42/terraform-aws-workspaces.git//workspace?ref=v0.1"

  for_each = {
    for workspace in local.workspaces : workspace.name => workspace
  }

  directory_id                                                   = module.workspaces_directory_service_directory.id
  volume_encryption_key                                          = module.kms-workspaces.key[0].arn
  user_name                                                      = each.value.user_name
  workspace_properties_compute_type_name                         = each.value.workspace_properties_compute_type_name
  workspace_properties_running_mode_auto_stop_timeout_in_minutes = each.value.workspace_properties_running_mode_auto_stop_timeout_in_minutes
  bundle_id                                                      = "wsb-gm4d5tx2v" #Server2016 - Windows 10

  tags = local.tags
}

resource "random_password" "workspaces_password" {
  length  = 16
  special = false
}

module "vpc" {

  source  = "terraform-aws-modules/vpc/aws"
  version = "2.65.0"

  name = "vpc"
  cidr = "172.15.0.0/16"

  azs             = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  private_subnets = ["172.15.0.0/19", "172.15.32.0/19", "172.15.64.0/19"]
  public_subnets  = ["172.15.128.0/19", "172.15.160.0/19", "172.15.192.0/19"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  tags                 = local.tags
}

module "kms-workspaces" {

  source  = "Cloud-42/kms/aws"
  version = "1.3.0"

  alias_name  = "workspaces"
  description = "Used to encrypt workspaces volumes"
}
