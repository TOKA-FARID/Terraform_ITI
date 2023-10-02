resource "aws_vpc" "vpc" {
 cidr_block = var.cidr
enable_dns_support="false"
}

