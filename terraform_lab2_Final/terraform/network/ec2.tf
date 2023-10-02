resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "lsb1"       
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { 
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./lab1.pem"
  }
}

resource "aws_instance" "ec2_private" {
    ami = "ami-09d3b3274b6c5d4aa"
    key_name = aws_key_pair.kp.key_name
    instance_type = "t2.micro"
    #availability_zone = "us-east-1"
    subnet_id = network.private_subnet_id_1
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.terraformSG.id]
    provisioner "local-exec" { 
        command = "echo '${self.private_ip}' >> ./terraformkey.txt"
    }
}




resource "aws_instance" "ec2_public" {
    ami = "ami-09d3b3274b6c5d4aa"
    key_name = aws_key_pair.kp.key_name
    instance_type = "t2.micro"
    #availability_zone = "us-east-1"
    subnet_id = network.public_subnet_id_1
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.terraformSG.id]
    provisioner "local-exec" { 
        command = "echo '${self.public_ip}' > ./terraformkey.txt"
    }
}