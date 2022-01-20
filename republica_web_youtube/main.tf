provider "aws" {
  region  = var.region
  profile = var.profile

}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] #Canonical
}

data "aws_vpc" "my_vpc" {
  id = var.vpc_id
}

# resource "aws_subnet" "example" {
#   vpc_id            = data.aws_vpc.selected.id
#   availability_zone = "us-west-2a"
#   cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
# }

resource "aws_key_pair" "key_pair" {

  key_name   = "${var.project_name}-deployer-key"
  public_key = file(var.ssh_key_path)
}

resource "aws_security_group" "allow_ssh" {

  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.my_vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }

}

resource "aws_instance" "web" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.key_pair.key_name
  availability_zone = var.availability_zone
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id
  ]
  tags = {
    Name = "Republica_web_Terraform_Tutorial"
  }

}

resource "aws_ebs_volume" "data" {

  availability_zone = var.availability_zone
  size              = 1
  type              = "gp3"
  encrypted         = true

  tags = {
    Name = "${var.project_name}-data"
  }

}

resource "aws_eip" "eip" {
  instance = aws_instance.web.id
  vpc      = true
  tags = {
    Name = "${var.project_name}-web-eip"
  }

}

resource "aws_volume_attachment" "attach_ebs_web" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.data.id
  instance_id = aws_instance.web.id
}
  