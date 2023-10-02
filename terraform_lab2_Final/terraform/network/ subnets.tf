resource "aws_subnet" "prisubnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_1_cidr
  
}


resource "aws_subnet" "prisubnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_2_cidr
  }




resource "aws_subnet" "pubsubnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_1_cidr
  map_public_ip_on_launch= "true"
}


resource "aws_subnet" "pubsubnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_2_cidr
  map_public_ip_on_launch= "true"
}





