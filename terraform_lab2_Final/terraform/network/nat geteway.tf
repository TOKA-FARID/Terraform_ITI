resource "aws_eip" "natgateway_ip" {

}



resource "aws_nat_gateway" "mynatgateway" {
  allocation_id = aws_eip.natgateway_ip.id
  subnet_id     = aws_subnet.pubsubnet1.id

}



#======
resource "aws_internet_gateway" "gw" {
 vpc_id = aws_vpc.vpc.id 
}