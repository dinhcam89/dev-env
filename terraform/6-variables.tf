variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "key_name" {
  default = "dev-key"
}

variable "instance_type" {
  default = "t3.small"
}

variable "ami_id" {
  description = "AMI for Ubuntu 22.04 or your preferred distro"
  default     = "ami-0c02fb55956c7d316" # Ubuntu 22.04 in us-east-1
}
