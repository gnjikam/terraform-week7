resource "aws_subnet" "publicsubnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.120.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicsubnet"
    env = "dev"
  }
}
resource "aws_subnet" "publicsubnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.120.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicsubnet"
    env = "dev"
  }
}