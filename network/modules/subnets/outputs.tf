output "subnet_ids" {
  description = "Map of availability zone to subnet ID."
  value       = { for az, subnet in aws_subnet.this : az => subnet.id }
}
