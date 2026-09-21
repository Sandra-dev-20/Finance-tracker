provider "aws" {
  region = "eu-north-1"
}
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}


module "subnets" {
  source       = "./modules/subnets"
  vpc_id       = module.vpc.vpc_id
  subnet_cidrs = var.subnet_cidrs
}
