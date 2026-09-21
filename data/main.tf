provider "aws" {
  region = "eu-north-1"
}
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "sandy-finance-tracker-tfstate"
    key    = "network/terraform.tfstate"
    region = "eu-north-1"
  }

}

module "rds" {
  source            = "./modules/rds"
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  subnet_ids        = data.terraform_remote_state.network.outputs.subnet_ids
  vpc_cidr          = data.terraform_remote_state.network.outputs.vpc_cidr
  database_engine   = var.database_engine
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  database_name     = var.database_name
  database_username = var.database_username
  database_password = var.database_password
}
