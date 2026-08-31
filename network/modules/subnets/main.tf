resource "aws_subnet" "this" {
  for_each = var.subnet_cidrs

  vpc_id                  = var.vpc_id
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = {
    Name = "finance-tracker-subnet-${each.key}"
  }
}
