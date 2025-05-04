variable "project_id" {}
variable "region"     { default = "us-central1" }
variable "zone"       { default = "us-central1-a" }

variable "machine_type" {
  default = "e2-medium"
}

variable "image_family" {
  default = "ubuntu-2204-lts"
}

variable "image_project" {
  default = "ubuntu-os-cloud"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "gitlab_count" {
  default = 1
}

variable "runner_count" {
  default = 2
}

variable "harbor_count" {
  default = 1
}
