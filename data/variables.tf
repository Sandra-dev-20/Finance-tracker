variable "database_engine" {
  type        = string
  description = "The database engine to use, e.g. postgres."
  default     = "postgres"
}

variable "instance_class" {
  type        = string
  description = "The RDS instance size/class, e.g. db.t3.micro."
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  type        = number
  description = "Allocated storage for the database, in GB."
  default     = 20
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
