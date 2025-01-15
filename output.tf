output "ec2_ip_address" {
  value = aws_instance.my_app.public_ip
}
