output "gitlab_ip" {
  value = aws_instance.gitlab.public_ip
}

output "runner_ips" {
  value = [
    aws_instance.runner_1.public_ip,
    aws_instance.runner_2.public_ip
  ]
}

output "harbor_ip" {
  value = aws_instance.harbor.public_ip
}
