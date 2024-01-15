# Associate Private, Private and DB Subnets with their Respective Route Tables
resource "aws_route_table_association" "public_rt_association_1a" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_rt_association_1b" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_rt_association_1c" {
  subnet_id      = aws_subnet.public_subnet_1c.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_rt_association_1a" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_rt_association_1b" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_rt_association_1c" {
  subnet_id      = aws_subnet.private_subnet_1c.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "db_rt_association_1a" {
  subnet_id      = aws_subnet.db_subnet_1a.id
  route_table_id = aws_route_table.db_route_table.id
}

resource "aws_route_table_association" "db_rt_association_1b" {
  subnet_id      = aws_subnet.db_subnet_1b.id
  route_table_id = aws_route_table.db_route_table.id
}

resource "aws_route_table_association" "db_rt_association_1c" {
  subnet_id      = aws_subnet.db_subnet_1c.id
  route_table_id = aws_route_table.db_route_table.id
}

# Add Public, Private and DB Routes to their Respective Route Tables
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_ngw.id
}

#resource "aws_route" "db_route" {
#  route_table_id         = aws_route_table.db_route_table.id
#  destination_cidr_block = aws_vpc.my_vpc.cidr_block
#  local_gateway_id       = aws_vpc.my_vpc.id
#}