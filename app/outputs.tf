output "app_public_ip" {
  description = "The public IP address of the app server."
  value       = module.compute.public_ip
}
