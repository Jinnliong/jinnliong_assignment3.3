# Create NAT Gateway
resource "aws_eip" "my_eip" {
  # ... (Elastic IP configuration)
}

resource "aws_nat_gateway" "my_ngw" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.private_subnet_1a.id

  tags = {
    Name        = "${var.name_prefix}-ngw"
    Environment = var.environment
  }
}