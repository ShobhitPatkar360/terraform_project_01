# crating a vpc
resource "aws_vpc" "tf_vpc" {
  # providing cidr block
  cidr_block = var.cidr_block

  # it is important for transit gateway or connectivity among other services
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    # providing name tag
    Name = var.vpc_name
  }
}