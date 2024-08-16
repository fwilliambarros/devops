variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

variable "name" {
  description = "The name tag for the EC2 instance"
  type        = string
}
