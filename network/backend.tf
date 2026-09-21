terraform {
  backend "s3" {
    bucket       = "sandy-finance-tracker-tfstate"
    key          = "network/terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
    encrypt      = true
  }
}
