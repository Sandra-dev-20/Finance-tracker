resource "aws_db_subnet_group" "this" {
  name       = "finance-tracker-db-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_security_group" "rds" {
  name_prefix = "finance-tracker-rds-"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "this" {
  identifier             = "finance-tracker-db"
  engine                 = var.database_engine
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  db_name                = var.database_name
  username               = var.database_username
  password               = var.database_password
  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  skip_final_snapshot    = true
  publicly_accessible    = false

  tags = {
    Name = "finance-tracker-db"
  }
}
