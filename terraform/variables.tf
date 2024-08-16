variable "aws_region"{
  type = string
  description = "descrição"
  default = "us-east-1"
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0ae8f15ae66fe8cda"
}

# variable "key_name" {
#   description = "The name of the key pair to use for the instance"
#   type        = string
# }


#DATABASE VARS################################################################


variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
  default     = "instancia-rds"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "PostgreSQL"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "db_instance_class" {
  description = "The instance type for the RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "The storage allocated for the RDS instance"
  type        = number
  default     = 20
}

variable "db_engine_version" {
  description = "The PostgreSQL engine version"
  type        = string
  default     = "13.4"
}

variable "db_subnet_group_name" {
  description = "The DB subnet group for RDS"
  type        = string
  default     = "teste"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
  default     = ["subnet-0e5cd44e1025cadf6"]
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "rds_sg"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the RDS instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Ajuste conforme necessário
}

variable "db_backup_retention_period" {
  description = "Number of days to retain backups"
  type        = number
  default     = 7
}

#VPC##############################################3

variable "vpc_name" {
  description = "The name of the database"
  type        = string
  default     = "nat"
}

variable "vpc_az" {
  description = "The name of the database"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  description = "The name of the database"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "The name of the database"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "enable_nat_gateway" {
  description = "The name of the database"
  type        = bool
  default     = true
}

variable "enable_vpn_gateway" {
  description = "The name of the database"
  type        = bool
  default     = true
}

variable "environment" {
  description = "The name of the database"
  type        = string
  default     = "dev"
}