terraform {
  cloud {
    organization = "dmitron"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_ami" "latest_ubuntu-20.04" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_instance" "tf_stage" {
  ami                    = data.aws_ami.latest_ubuntu-20.04.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.tf_stage.key_name
  vpc_security_group_ids = [aws_security_group.my_web_server.id]
  user_data              = file("user_data.sh")
  tags = {
    Name    = "Terraform"
    project = "DevOps experience"
    owner   = "Dmytro"
  }
}

resource "aws_key_pair" "tf_stage" {
  key_name   = "deployer-key"
  public_key = var.public_key
}

resource "aws_security_group" "my_web_server" {
  name        = "Dynamic_security_group"
  
  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
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
