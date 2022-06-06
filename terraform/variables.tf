variable "region" {
  description = "Please Enter AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Enter Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "allow_ports" {
  description = "List of Ports to open for server"
  type        = list
  default     = ["22", "80", "443"]
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDh+VC6QSJaCIUvFFK5Sq6S3q2qzK25Ncm2gLCHOHmpw5tH7JJAaHIdKyRXC6JsqCH9foFAKt6p1c2l2VY04l4t6QedhMsb7CiMlAV3hMZDB0at9M7TLy8ofvjqRpBrMsZ7mBhxwMI06JJq01TTOjtBp2Xs47FzibfJ6okMqWKgsqlgMqRPqVqTHqCxHDZ+FmonYM1JVRmD1zmeRfDCPT+KdEnSiajUTh1mlZu9vleQsPYEU9QWFbtU4SB++a4P43CfmOihpDJ3pN7+9IaMlUNWFKcvsaEhbx7QzDS8LL5ZQDdOPXKbqlEYcGPi9InpF8WQLiHrebziIfUjd33Uz1Z"
}
