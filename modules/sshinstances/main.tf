# Create EC2 instance
resource "aws_instance" "jinnliong_instance" {
  ami                    = data.aws_ami.amazon_linux.id #"ami-05d1dd0175a5c3b99"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet_1a.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  key_name               = var.ssh_key_name

  tags = {
    Name        = "${var.name_prefix}-instance"
    Environment = var.environment
  }
}