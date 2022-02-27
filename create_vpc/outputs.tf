
#####################################
#########VPC OUTPUTS#################
#####################################

output "availability_zones" {
  value = try(module.vpc_animals4life.availability_zones[*], "")
}

output "vpc_id" {
  value = try(module.vpc_animals4life.vpc_id, "")
}
#
output "vpc_arn" {
  value = try(module.vpc_animals4life.vpc_arn, "")
}

output "vpc_tags" {
  value = try(module.vpc_animals4life.vpc_tags, "")
}

output "vpc_cidr_block" {
  value = try(module.vpc_animals4life.vpc_cidr_block[*], "")
}

output "default_security_group_id" {
  value = try(module.vpc_animals4life.default_security_group_id[*], "")
}

output "default_network_acl_id" {
  value = try(module.vpc_animals4life.default_network_acl_id[*], "")
}

output "default_route_table_id" {
  value = try(module.vpc_animals4life.default_route_table_id, "")
}

output "vpc_instance_tenancy" {
  value = try(module.vpc_animals4life.vpc_instance_tenancy, "")
}

output "vpc_main_route_table_id" {
  value = try(module.vpc_animals4life.vpc_main_route_table_id[*], "")
}

output "vpc_owner_id" {
  value = try(module.vpc_animals4life.vpc_owner_id, "")
}

output "public_internet_gateway_route_id" {
  value = try(module.vpc_animals4life.public_internet_gateway_route_id[*], "")
}

output "igw_id" {
  value = try(module.vpc_animals4life.igw_id, "")
}

output "igw_arn" {
  value = try(module.vpc_animals4life.igw_arn, "")
}

# VPC Flow Log
output "vpc_flow_log_id" {
  value = try(module.vpc_animals4life.vpc_flow_log_id[*], "")
}

output "vpc_flow_log_cloudwatch_aim_role_arn" {
  value = try(module.vpc_animals4life.vpc_flow_log_cloudwatch_iam_role_arn[*], "")
}

output "vpc_flow_log_destination_arn" {
  value = try(module.vpc_animals4life.vpc_flow_log_destination_arn[*], "")
}

output "kms_key_vpc_flow_log_arn" {
  value = try(module.vpc_animals4life.kms_key_vpc_flow_log_arn[*], "")
}

output "kms_key_vpc_flow_log_id" {
  value = try(module.vpc_animals4life.kms_key_vpc_flow_log_id[*], "")
}


######################################
########## Public Subnets OUTPUTS ####
######################################

output "public_subnets_id" {
  #value = values(aws_subnet.public)[*].id
  value = try(module.vpc_animals4life.public_subnets_id[*], "")
}

output "public_subnets_arn" {
  value = try(module.vpc_animals4life.public_subnets_arn[*], "")
}

output "public_subnets_cidr_block" {
  value = try(module.vpc_animals4life.public_subnets_cidr_block[*], "")
}

output "public_subnets_tags" {
  value = try(module.vpc_animals4life.public_subnets_tags[*], "")
}

output "public_route_table_ids" {
  value = try(module.vpc_animals4life.public_route_table_ids[*], "")
}

output "public_route_table_association_ids" {
  value = try(module.vpc_animals4life.public_route_table_association_ids[*], "")
}

output "nat_ids" {
  value = try(module.vpc_animals4life.nat_ids[*], "")
}

output "nat_public_ips" {
  value = try(module.vpc_animals4life.nat_public_ips[*], "")
}

output "public_network_acl_id" {
  value = try(module.vpc_animals4life.public_network_acl_id[*], "")
}

output "public_network_acl_arn" {
  value = try(module.vpc_animals4life.public_network_acl_arn[*], "")
}

output "public_security_group" {
  value = try(module.vpc_animals4life.public_security_group[*], "")
}

######################################
########## Private Subnets OUTPUTS ###
######################################

output "private_subnets_id" {
  #value = values(aws_subnet.public)[*].id
  value = try(module.vpc_animals4life.private_subnets_id[*], "")
}

output "private_subnets_arn" {
  value = try(module.vpc_animals4life.private_subnets_arn[*], "")
}

output "private_subnet_cidr_block" {
  value = try(module.vpc_animals4life.private_subnet_cidr_block[*], "")
}

output "private_subnet_tags" {
  value = try(module.vpc_animals4life.private_subnet_tags[*], "")
}

output "private_route_table_ids" {
  value = try(module.vpc_animals4life.private_route_table_ids[*], "")
}

output "private_nat_gateways_route_ids" {
  value = try(module.vpc_animals4life.private_nat_gateways_route_ids[*], "")
}

output "private_route_table_association_id" {
  value = try(module.vpc_animals4life.private_route_table_association_id[*], "")
}

output "nat_private_ips" {
  value = try(module.vpc_animals4life.nat_private_ips[*], "")
}

output "private_network_acl_id" {
  value = try(module.vpc_animals4life.private_network_acl_id[*], "")
}

output "private_security_group_app" {
  value = try(module.vpc_animals4life.private_security_group_app[*], "")
}

output "private_security_group_db" {
  value = try(module.vpc_animals4life.private_security_group_db[*], "")
}

output "private_security_group_reserved" {
  value = try(module.vpc_animals4life.private_security_group_reserved[*], "")
}

## ---------------------------------
##
## ---------------------------------
