variable "subnet_cidrs" {
  type        = map(string)
  description = "Map of availability zone to subnet CIDR block."
  default = {
    "eu-north-1a" = "10.0.1.0/24"
    "eu-north-1b" = "10.0.2.0/24"
  }
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}
