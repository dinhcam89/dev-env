output "gitlab_public_ips" {
  value = google_compute_instance.gitlab[*].network_interface[0].access_config[0].nat_ip
}

output "runner_public_ips" {
  value = google_compute_instance.runner[*].network_interface[0].access_config[0].nat_ip
}

output "harbor_public_ips" {
  value = google_compute_instance.harbor[*].network_interface[0].access_config[0].nat_ip
}