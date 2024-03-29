# Create Internet Gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name        = "${var.name_prefix}-igw"
    Environment = var.environment
  }
}