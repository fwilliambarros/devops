provider "aws" {
  region = var.aws_region
}

# module "ec2_instance" {
#   source         = "./modules/ec2"
#   ami_id         = var.ami_id
#   instance_type  = var.instance_type
#   name           = "ExampleInstance"
# }
# module "aws_db_subnet_group" "this" {
#   name       = var.db_subnet_group_name
#   subnet_ids = var.subnet_ids

#   tags = {
#     Name = "DB Subnet Group"
#   }

# }
# module "rds" {
#   source               = "./modules/rds"
#   identifier           = var.db_identifier
#   allocated_storage    = var.db_allocated_storage
#   engine               = "postgres"
#   engine_version       = var.db_engine_version
#   instance_class       = var.db_instance_class
#   db_name                 = var.db_name
#   username             = var.db_username
#   password             = var.db_password
#   db_subnet_group_name = aws_db_subnet_group.this.name
#   vpc_security_group_ids = [aws_security_group.this.id]
#   skip_final_snapshot  = true
#   backup_retention_period = var.db_backup_retention_period
# }

# module "rds_postgresql" {
#   source                     = "./modules/rds-postgresql"
#   db_identifier              = "my-postgresql-db"
#   db_name                    = "mydatabase"
#   db_username                = "admin"
#   db_password                = "william"
#   db_instance_class          = "db.t3.micro"
#   db_allocated_storage       = 20
#   db_engine_version          = "13.4"
#   db_subnet_group_name       = "teste-123-abced"
#   subnet_ids                 = ["subnet-0e5cd44e1025cadf6"]  # Substitua pelos IDs das suas sub-redes
#   allowed_cidr_blocks        = ["0.0.0.0/0"]  # Ajuste conforme necessário
#   db_backup_retention_period = 7
#   security_group_name        = "RDS"
# }

module "vpc" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
  vpc_az = var.vpc_az
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway
  environment = "dev"
}