variable "vpc_id" {
  description = "The type of instance to create"
  type        = string
}

variable "subnet_id" {
  description = "The type of instance to create"
  type        = list(string)
}

variable "control_plane_subnet_ids" {
  description = "The type of instance to create"
  type        = "string"
}

variable "principal_arn" {
  description = "The type of instance to create"
  type        = string
}