#creating a vpc
  resource "aws_vpc" "new_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "new_sub1" {
    count      = length(var.sub_cidrs)
    cidr_block = var.sub_cidrs[count.index]
    vpc_id     = aws_vpc.new_vpc.id
    availability_zone = var.subnet_azs[count.index]
  
  
  tags = {
    "Name" = var.subnet_name_tags[count.index]
  }
}