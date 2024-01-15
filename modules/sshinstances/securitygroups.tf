# Create Security Group for EC2 instance using the generated VPC IP
resource "aws_security_group" "instance_sg" {
  description = "Security Group To Allow SSH from my IP range(s)"
  vpc_id      = aws_vpc.my_vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr_blocks}"] # Replace with your IP address or range
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.name_prefix}-allow-ssh"
    Environment = var.environment
  }
}