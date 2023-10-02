resource "aws_route_table" "priRT" {
  vpc_id = aws_vpc.vpc.id



route { 
   cidr_block    = "0.0.0.0/0"
   nat_gateway_id = aws_nat_gateway.mynatgateway.id
  }
}



resource "aws_route_table_association" "attach_private1" {
  subnet_id      = aws_subnet.prisubnet1.id
  route_table_id = aws_route_table.priRT.id
}


resource "aws_route_table_association" "attach_private2" {
  subnet_id      = aws_subnet.prisubnet2.id
  route_table_id = aws_route_table.priRT.id
}
