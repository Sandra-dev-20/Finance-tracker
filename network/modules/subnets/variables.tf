variable "vpc_id" {
  type        = string
  description = "The ID of the VPC these subnets belong to."
}

variable "subnet_cidrs" {
  type        = map(string)
  description = "Map of availability zone to subnet CIDR block."
}
