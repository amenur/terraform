provider "aws" {
  region  = "us-west-2"
  profile = "terraform"

}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

}

resource "aws_instance" "name" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

}