resource "aws_route_table" "pubRT" {
  vpc_id = aws_vpc.vpc.id

  route {
   cidr_block    = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.gw.id
   }
}

resource "aws_route_table_association" "attach_public1" {
  subnet_id      = aws_subnet.pubsubnet1.id
  route_table_id = aws_route_table.pubRT.id
}


resource "aws_route_table_association" "attach_public2" {
  subnet_id      = aws_subnet.pubsubnet2.id
  route_table_id = aws_route_table.pubRT.id
}