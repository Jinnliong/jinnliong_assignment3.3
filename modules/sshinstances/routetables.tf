# Create Public, Private and DB Route Tables
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name        = "${var.name_prefix}-public-rt"
    Environment = var.environment
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name        = "${var.name_prefix}-private-rt"
    Environment = var.environment
  }
}

resource "aws_route_table" "db_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name        = "${var.name_prefix}-db-rt"
    Environment = var.environment
  }
}