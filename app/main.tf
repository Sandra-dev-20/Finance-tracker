data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "sandy-finance-tracker-tfstate"
    key    = "network/terraform.tfstate"
    region = "eu-north-1"
  }
}

data "http" "my_ip" {
  url = "https://ifconfig.me/ip"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
  my_ip  = chomp(data.http.my_ip.response_body)
}

module "compute" {
  source            = "./modules/compute"
  subnet_id         = values(data.terraform_remote_state.network.outputs.subnet_ids)[0]
  security_group_id = module.security_group.security_group_id
  instance_type     = var.instance_type
  key_name          = var.key_name
}
