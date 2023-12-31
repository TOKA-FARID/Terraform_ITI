resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a" # AZ1
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_Subnet1"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a" # AZ1
  tags = {
    Name = "Private_Subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1b" # AZ2
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_Subnet2"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b" # AZ2
  tags = {
    Name = "Private_Subnet2"
  }
}