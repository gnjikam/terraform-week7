resource "aws_internet_gateway" "intgetway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "IGW"
  }
}