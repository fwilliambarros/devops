variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

# variable "key_name" {
#   description = "The name of the key pair to use for the instance"
#   type        = string
# }

variable "name" {
  description = "The name tag for the EC2 instance"
  type        = string
}
