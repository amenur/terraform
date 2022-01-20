variable "region" {
  type    = string
  default = "us-west-2"
}

variable "instanceType" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-013a129d325529d4d"
}

variable "istest" {
  type    = bool
  default = false
}

variable "ec2_instances_dev_count" {
  type    = number
  default = 1
}

variable "ec2_instances_prod_count" {
  type    = number
  default = 3
}

