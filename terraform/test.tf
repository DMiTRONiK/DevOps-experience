terraform {
  cloud {
    organization = "dmitron"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tf_stage" {
  ami                    = "ami-0c4f7023847b90238"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_web_server.id]
  user_data              = file("user_data.sh")
  tags = {
    Name    = "Terraform"
    project = "DevOps experience"
    owner   = "Dmytro"
  }
}

resource "aws_security_group" "my_web_server" {
  name        = "WebServer_security_group"
  description = "Allow http port"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_out"
  }
}

output "instance_public_ip" {
  value = aws_instance.tf_stage.public_ip
}

