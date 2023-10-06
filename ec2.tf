resource "aws_instance" "ec2-server" {
  ami           = "ami-0bb4c991fa89d4b9b"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.secgroup.id]
  subnet_id     = aws_subnet.publicsubnet1.id
  key_name = "magellankey"
  user_data = file("install.sh")
  tags = {
    Name = "tf-example"
    env = "dev"
  }
}