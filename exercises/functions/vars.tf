variable "ami" {
  type = map(any)
  default = {
    "us-east-1"  = "ami-0323c3dd2da"
    "us-west-2"  = "ami-309843094fsa"
    "ap-south-1" = "ami-209230942fd"
  }
}

variable "region" {
  default = "us-east-1"

}

variable "instance_type" {
  default = "t2.micro"

}

variable "tags" {
  type    = list(any)
  default = ["first", "second"]

}
