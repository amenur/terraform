variable "sg_ports" {
  type        = list(number)
  description = "list_of_ingress_ports"
  default     = [8200, 8201, 8300, 9200, 9500]

}