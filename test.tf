
import {
  to       = aws_security_group.example_0
  provider = aws
  identity = {
    account_id = "042105353901"
    id         = "sg-00f244ae8e0c75926"
    region     = "us-east-1"
  }
}

resource "aws_security_group" "example_0" {
  provider    = aws
  description = "allow port 22 for ssh protocol"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  },
  {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "allow_ssh"
  region                 = "us-east-1"
  tags = {
    Name = "allow_ssh"
  }
  tags_all = {
    Name = "allow_ssh"
  }
  vpc_id = "vpc-0b1bd92f8d06bfd1e"
}
