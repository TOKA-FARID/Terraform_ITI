resource "aws_eip" "nat_eip" {
  instance = aws_instance.bastion_instance.id
  tags = {
    Name = "nat_eip"
  }
}

resource "aws_eip" "nat_gateway_eip" {
  tags = {
    Name = "nat_gateway_eip"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags = {
    Name = "NAT_Gateway"
  }
}