# Generate a new TLS private key
resource "tls_private_key" "my_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an AWS key pair from the TLS private key
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"  
  public_key = tls_private_key.my_key_pair.public_key_openssh
}

# Save the private key to a local file
resource "local_file" "private_key" {
  filename = "~/.ssh/my-private-key.pem"  
  content  = tls_private_key.my_key_pair.private_key_pem
}
