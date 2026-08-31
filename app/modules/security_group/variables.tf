variable "vpc_id" {
  type        = string
  description = "The ID of the VPC this security group belongs to."
}

variable "my_ip" {
  type        = string
  description = "Your IP address, for restricted SSH access."
}
