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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRlNFCY5eiUerHto7Ft39txQriqIA8C2i8Ak/3Ewv5PgSFypmvBEPE0Z3xuJOk6ByniNoN0LP/rZ9WETL4sbue5w28eaN8X5MIdFfHVmvJUfZU6SiG3yDBU5vn8TSyqQc10Jp75AlF+3ATLzFIxZ5iG5iUpm+5R+CK+VhOubTug2LKj3pB5KwJ1nc+guR0yzNebu36LxEKQWvrpa1UIRSIexm0Wn3Hh8P6w6W5MikrFAr1/fl1klb9X7AC2UpaznBsUYmqA067RYWbe4ctbgTH+Jc+SShumZVgVVK/VMyII80kYqWZmSBmkuyzIvrYQrHldAvOeK+sptU8iVvQU2k+DaVXih4bvUtwcnqqt0PCgDmL9M/ZBBT8e9k77oncxqBDF9lz2a1wDQKyPWyEGdx20bvOFNyRv8fwIZ808BSIahqJx8UGE/++9n4FAKSkuvYUQTIOdZMjQe56G2bg3vsQ96K5Hl7B1lF9wEaBcTV4bH6YCAIO0PmGw77b1PaTJC9LPKfbi4Ghw9syE4/X5Ly2sZDaCVpzBf94kbfvbvXaAG1CxHFito8ijRJhKM7CaYWucDIXDJNRAfWVA99I+4TMIN/tgD6hupO1kfWzl0ZiAF6SPEl0xSeE30ObS3qJrpgpH2fwD8kGZkkhTtV6gS30u/kKZJqhj6hQ8XagHXcaCw== dmitronik@gmail.com"
}
