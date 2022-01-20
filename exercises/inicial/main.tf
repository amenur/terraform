provider "aws" {
  region  = "us-west-2"
  profile = "terraform"

}

# resource "aws_eip" "lb" {
#   vpc = true
# }

# # output "eip" {
# #   value = aws_eip.lb.public_ip
# # }

resource "aws_instance" "ec2_amenur" {
  ami           = "ami-013a129d325529d4d"
  instance_type = var.INSTANCE_TYPE

}

# # output "mys3Bucket" {
# #   value = aws_s3_bucket.mys3_bucket_amenur22_22_22_22.bucket_domain_name
# # }

# resource "aws_eip_association" "eip_associate" {
#   instance_id   = aws_instance.ec2_amenur.id
#   allocation_id = aws_eip.lb.id

# }

# resource "aws_security_group" "amenur-security-group" {
#   name        = "amenur-security-group"
#   description = "Allow TLS inbound traffic"


#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
#   }
# }
