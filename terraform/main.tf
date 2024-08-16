provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source         = "./modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  name           = "ExampleInstance"
}

module "rds_postgresql" {
  source                     = "./modules/rds-postgresql"
  db_identifier              = var.db_identifier
  db_name                    = var.db_name
  db_username                = var.db_username
  db_password                = var.db_password
  db_instance_class          = var.db_instance_class
  db_allocated_storage       = var.db_allocated_storage
  db_engine_version          = var.db_engine_version
  db_subnet_group_name       = var.db_subnet_group_name
  subnet_ids                 = var.subnet_ids
  allowed_cidr_blocks        = var.allowed_cidr_blocks
  db_backup_retention_period = var.db_backup_retention_period
  security_group_name        = var.security_group_name
}

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

