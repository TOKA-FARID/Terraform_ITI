resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
  # tags = {
  #   Name = "PublicRoute"
  # }
}

resource "aws_route" "private_subnet1_nat" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
  # tags = {
  #     Name = "PrivateSubnet1NAT"
  # }
}

resource "aws_route" "private_subnet2_nat" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
  # tags = {
  #   Name = "PrivateSubnet2NAT"
  # }
}
