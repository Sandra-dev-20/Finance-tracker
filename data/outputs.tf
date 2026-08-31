output "db_endpoint" {
  description = "The connection endpoint of the database."
  value       = module.rds.endpoint
  sensitive   = true
}
