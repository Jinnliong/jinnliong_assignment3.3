# Create Public, Private and DB Subnets and link them to respective availability zone
resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.name_prefix}-public-1a"
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.name_prefix}-public-1b"
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-southeast-1c"
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.name_prefix}-public-1c"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_1a" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-private-1a"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-private-1b"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "ap-southeast-1c"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-private-1c"
    Environment = var.environment
  }
}

resource "aws_subnet" "db_subnet_1a" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.7.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-db-1a"
    Environment = var.environment
  }
}

resource "aws_subnet" "db_subnet_1b" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.8.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-db-1b"
    Environment = var.environment
  }
}

resource "aws_subnet" "db_subnet_1c" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.9.0/24"
  availability_zone       = "ap-southeast-1c"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.name_prefix}-db-1c"
    Environment = var.environment
  }
}