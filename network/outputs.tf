output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC."
  value       = module.vpc.vpc_cidr
}

output "subnet_ids" {
  description = "Map of availability zone to subnet ID."
  value       = module.subnets.subnet_ids
}
