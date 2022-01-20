provider "aws" {
  region  = var.region
  profile = "terraform"

}

locals {
  common_tags = {
    owner = "amenur"
    team  = "DevOps"
  }
}

resource "aws_instance" "ec2_dev" {
  ami           = var.ami
  instance_type = var.instanceType
  #count         = var.istest == true ? var.ec2_instances_dev_count : 0
  tags = local.common_tags
}

resource "aws_instance" "ec2_prod" {
  ami           = var.ami
  instance_type = var.instanceType
  #count         = var.istest == false ? var.ec2_instances_prod_count : 0
  tags = local.common_tags
}