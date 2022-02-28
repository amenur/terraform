
module "vpc" {
  source = "../../terraform_modules/modules/vpc_registry"

  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block

  azs = var.azs
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_single_nat_gateway = var.enable_single_nat_gateway

  enable_reuse_ips = var.enable_reuse_ips
  enable_vpn_gateway = var.enable_vpn_gateway

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  enable_classiclink = var.enable_classiclink
  enable_classlink_dns_support = var.enable_classlink_dns_support

  # VPC Flow Logs (Cloudwatch log group and IAM role will be created)
  enable_flow_log = var.enable_flow_log
  create_flow_log_cloudwatch_log_group = var.create_flow_log_cloudwatch_log_group
  create_flow_log_cloudwatch_iam_role = var.create_flow_log_cloudwatch_iam_role
  flow_log_aggregation_interval = var.flow_log_aggregation_interval

  vpc_tags = var.vpc_tags

  # SUBNETS TAGS FOR DEPLOY EKS CLUSTER
  public_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}