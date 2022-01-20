variable "region" {
  type        = string
  description = "(optional) Region for deploy the infrastructure"
  default     = "eu-west-1"
}

variable "profile" {
  type        = string
  description = "(required) Profile for deploy the infrastructure"
}
