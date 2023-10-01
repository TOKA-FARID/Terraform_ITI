resource "aws_instance" "bastion_instance" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet1.id
  vpc_security_group_ids = [aws_security_group.ssh_from_anywhere.id]
  key_name = aws_key_pair.my_key_pair.id

  user_data = <<-EOF
                #!/bin/bash
                echo '${tls_private_key.my_key_pair.private_key_pem}' > /home/ec2-user/private_key.pem
                chmod 400 my-private-key.pem
            EOF

  tags = {
    Name = "Bastion_Instance"
  }
}
