
profile = "aramis"

vpc_name = "eks_poc_aramis"

vpc_cidr_block = "10.16.0.0/16"

azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

public_subnets = ["10.16.48.0/20", "10.16.112.0/20", "10.16.176.0/20"]

private_subnets = ["10.16.0.0/20", "10.16.64.0/20", "10.16.128.0/20"]

enable_nat_gateway = false

enable_vpn_gateway = false

enable_single_nat_gateway = false

#enable_reuse_ips = true

enable_dns_hostnames = true

enable_dns_support = true
#
#enable_classiclink = true
#
#enable_classlink_dns_support = true

enable_flow_log = false

create_flow_log_cloudwatch_log_group = false

create_flow_log_cloudwatch_iam_role = false

vpc_tags = {
  Project_Name = ""
  Env          = "dev"
  Cost_Center  = "my-wallet"
}


