resource "aws_subnet" "privatesubnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.120.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "privatesubnet"
    env = "dev"
  }
}
resource "aws_subnet" "privatesubnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.120.4.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "privatesubnet"
    env = "dev"
  }
}