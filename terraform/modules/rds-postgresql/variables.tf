variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
  # default     = "instancia-rds"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  # default     = "PostgreSQL"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  # default     = "william"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  # default     = "william"
}

variable "db_instance_class" {
  description = "The instance type for the RDS"
  type        = string
  # default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "The storage allocated for the RDS instance"
  type        = number
  # default     = 20
}

variable "db_engine_version" {
  description = "The PostgreSQL engine version"
  type        = string
  # default     = "13.4"
}

variable "db_subnet_group_name" {
  description = "The DB subnet group for RDS"
  type        = string
  # default     = "teste"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
  # default     = ["subnet-0e5cd44e1025cadf6"]
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  # default     = "rds_sg"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the RDS instance"
  type        = list(string)
  # default     = ["0.0.0.0/0"]  # Ajuste conforme necessário
}

variable "db_backup_retention_period" {
  description = "Number of days to retain backups"
  # default     = 7
}
