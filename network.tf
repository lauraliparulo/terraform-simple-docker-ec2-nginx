resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "my_app"
  }
}

resource "aws_eip" "my_app" {
  instance = aws_instance.my_app.id
  vpc      = true
}

