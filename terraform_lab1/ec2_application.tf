resource "aws_instance" "application_instance" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet1.id
  vpc_security_group_ids = [aws_security_group.ssh_and_port_3000_from_vpc.id]
  key_name = aws_key_pair.my_key_pair.id

  tags = {
    Name = "application_Instance"
  }
}