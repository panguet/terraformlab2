// input variables 
variable "network_name" {
  type = "string"
  default = "thenewnet"
  description = "just the network name for the google Compute Platform"
}

variable "gcp_ip_cidr_range" {
  type = "string"
  default = "10.0.0.0/16"
  description = "IP CIDR Range for google VPC."
}

variable "aws_ip_cidr_range" {
  type = "string"
  default = "10.0.1.0/24"
  description = "IP CIDR Range for AWS VPC."
}

variable "subnet_names" {
  type = "map"
  default = {
      subnet1 = "subnetone"
      subnet2 = "subnetwo"
      subnet3 = "subnethree"
  }
}



