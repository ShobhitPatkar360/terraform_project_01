# subnet association
resource "aws_route_table_association" "tf_route_table_association" {
  subnet_id      = aws_subnet.tf_subnet.id
  route_table_id = aws_route_table.tf_route_table.id
}

# creating resource -> route table
resource "aws_route_table" "tf_route_table" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = var.cidr_block # cidr for our vpc
    gateway_id = "local"        # allow traffic everywhere , inside our vpc boundry
  }

  route {
    cidr_block = "0.0.0.0/0"                    # packet ka address nhi pata
    gateway_id = aws_internet_gateway.tf_igw.id # uss packet ko bahar fek do
  }

  tags = {
    Name = var.route_table_name
  }
}

# creating resourece -> internet gateway
resource "aws_internet_gateway" "tf_igw" {
  # providing vpc id
  vpc_id = aws_vpc.tf_vpc.id

  tags = {
    Name = var.igw_name
  }
}

