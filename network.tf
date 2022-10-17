resource "aws_vpc" "vpc_1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my_vpc"
  }
}



resource "aws_subnet" "sub" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "first"
  }
}



resource "aws_subnet" "sub_2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "second"
  }
  depends_on = [ 
    aws_subnet.sub
    
  ]
}



resource "aws_subnet" "sub_3" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "second2"
  }
  depends_on = [
    aws_subnet.sub2
    
  ]
}