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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqZG7cHyuSjYC5ML0pTVb2TU0zD7ATdIDzm9jmnDcvtzGz9ipdhTUxfH1ZJV58B2k2GOBp7JQVIXD32GV8d3FMFd+R2aRJbj5Z2/c0zHg0sxrlNGcizclaGGP4UPzHuYibJY/1eVmA0N6HsZdV/h9DqC1YY5S7zP14VPA2FePpXa/5XiZGavUdvVT9t9fpiyRWPnAvr9tYXhGapWXAFSsZ0x5P1JYOr/M7cRnqaWxs8oQEnIqPTmabZAEjQj7xM0M1cVS9yid7hcXbS4B4yJZDymlgQDqOPdlOxDhWPWmwktYY9cOZmQ6ZwTqddqtYfLhFiEOHh3U4q5ko8hKpKmhd"
}
