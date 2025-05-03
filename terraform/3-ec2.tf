resource "aws_instance" "gitlab" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  key_name               = aws_key_pair.generated.key_name
  tags = {
    Name = "gitlab-server"
    Role = "gitlab"
  }
}

resource "aws_instance" "runner_1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  key_name               = aws_key_pair.generated.key_name
  tags = {
    Name = "gitlab-runner-1"
    Role = "runner"
  }
}

resource "aws_instance" "runner_2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  key_name               = aws_key_pair.generated.key_name
  tags = {
    Name = "gitlab-runner-2"
    Role = "runner"
  }
}

resource "aws_instance" "harbor" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  key_name               = aws_key_pair.generated.key_name
  tags = {
    Name = "harbor-registry"
    Role = "harbor"
  }
}
