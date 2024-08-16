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
  description = "The name of the database"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "The name of the database"
  type        = bool
}

variable "enable_vpn_gateway" {
  description = "The name of the database"
  type        = bool
}

variable "environment" {
  description = "The name of the database"
  type        = string
}