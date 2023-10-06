resource "aws_security_group" "secgroup" {
  name        = "secgpweb"
  description = "Allow ssh and httpd"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = "allow ssh"
    from_port        = 22
    to_port          = 22 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  ingress {
    description      = "allow httpd"
    from_port        = 80 
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dev"
  }
  }

