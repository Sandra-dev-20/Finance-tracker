variable "vpc_id" {
  type        = string
  description = "The ID of the VPC the database security group belongs to."
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the DB subnet group."
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block allowed to reach the database."
}

variable "database_engine" {
  type        = string
  description = "The database engine to use, e.g. postgres."
}

variable "instance_class" {
  type        = string
  description = "The RDS instance size/class, e.g. db.t3.micro."
}

variable "allocated_storage" {
  type        = number
  description = "Allocated storage for the database, in GB."
}

variable "database_name" {
  type        = string
  description = "Name of the database to create."
}

variable "database_username" {
  type        = string
  description = "Master username for the database."
}

variable "database_password" {
  type        = string
  description = "Master password for the database."
  sensitive   = true
}

