output "vpc_id" {
    value = aws_vpc.vpc.id
}


output "public_subnet_id_1"{
    value = aws_subnet.pubsubnet1.id
}

output "public_subnet_id_2"{
    value = aws_subnet.pubsubnet2.id
}


output "private_subnet_id_1"{
    value = aws_subnet.prisubnet1.id
}



output "private_subnet_id_2"{
    value = aws_subnet.prisubnet2.id
}


output "security_group_1"{
    value = aws_security_group.terraformSG.id
}



output "security_group_2"{
    value = aws_security_group.terraformSG2.id
}

