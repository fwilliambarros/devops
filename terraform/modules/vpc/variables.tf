variable "vpc_name" {
  description = "The name of VPC"
  type        = string
}

variable "vpc_az" {
  description = "VPC Az regions"
  type        = list(string)
}

variable "private_subnets" {
  description = "subnet private names"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnet list"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable nat gateway"
  type        = bool
}

variable "enable_vpn_gateway" {
  description = "Enable VPN gateway"
  type        = bool
}

variable "environment" {
  description = "change environment"
  type        = string
}
