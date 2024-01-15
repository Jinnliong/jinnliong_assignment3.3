output "ssh_public_ip" {
  value = aws_instance.jinnliong_instance
}

output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "ami_arn" {
  value = data.aws_ami.amazon_linux.arn
}