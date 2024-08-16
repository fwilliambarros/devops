variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
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
}

variable "db_allocated_storage" {
  description = "The storage allocated for the RDS instance"
  type        = number
}

variable "db_engine_version" {
  description = "The PostgreSQL engine version"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The DB subnet group for RDS"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the RDS instance"
  type        = list(string)
}

variable "db_backup_retention_period" {
  description = "Number of days to retain backups"
}
