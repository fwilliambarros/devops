variable "vpc_id" {
  description = "Change VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Change Subnet ID"
  type        = list(string)
}

variable "control_plane_subnet_ids" {
  description = "Change control plane subnet ID"
  type        = "string"
}

variable "principal_arn" {
  description = "Change principal arn"
  type        = string
}
