resource "aws_instance" "my_app" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  security_groups             = [aws_security_group.my_app.id]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.my_app.id
  key_name = var.ami_key_pair_name

  ### Install Docker
  user_data = <<-EOF
  #!/bin/bash
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  sudo groupadd docker
  sudo usermod -aG docker ubuntu
  newgrp docker
  docker run -dit -p 80:80 nginxdemos/hello
  EOF

  tags = {
    Name = "my_app"
  }
}
