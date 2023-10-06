# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = "172.120.0.0/16" 
  instance_tenancy = "default"
  tags = {
    name = "terraform-vpc"
    env = "dev"
  }
}
