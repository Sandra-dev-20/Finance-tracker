variable "subnet_id" {
  type        = string
  description = "The subnet ID to launch the instance into."
}

variable "security_group_id" {
  type        = string
  description = "The security group ID to attach to the instance."
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type."
}

variable "key_name" {
  type        = string
  description = "Name of the existing AWS EC2 key pair for SSH access."
}
