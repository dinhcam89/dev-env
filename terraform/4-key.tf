resource "tls_private_key" "dev_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated" {
  key_name   = var.key_name
  public_key = tls_private_key.dev_key.public_key_openssh
}

output "private_key_pem" {
  value     = tls_private_key.dev_key.private_key_pem
  sensitive = true
}
