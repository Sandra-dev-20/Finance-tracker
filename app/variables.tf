variable "instance_type" {
  type        = string
  description = "The EC2 instance type for the app server."
  default     = "t3.micro"
}


variable "key_name" {
  type        = string
  description = "Name of the existing AWS EC2 key pair for SSH access."
}
