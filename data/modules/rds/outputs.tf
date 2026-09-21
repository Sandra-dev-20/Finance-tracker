output "endpoint" {
  description = "The connection endpoint of the database."
  value       = aws_db_instance.this.endpoint
}
