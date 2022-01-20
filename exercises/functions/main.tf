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

resource "aws_instance" "ec2_instance" {
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type
  count         = 2

  tags = {
    Name  = element(var.tags, count.index)
    owner = local.common_tags.owner
    team  = local.common_tags.team

  }
}