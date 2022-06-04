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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDL86ZmH3BB0cjsp1+VdgT3NlLCnuS6meFuFxXn37uK0/RKw7ZaNzptCgmgRBNp1bn45BpMLAvaOBLdxMEsnFUcRlR1M6Bs3W+czsB7quHNyeAWtkb8dGtBMdJNvPo0jrT+jENxI7p2T/x5/2DtnGRbaD1YeGHGDPZmSYJaYZfp6zPsB+kNCb4aAIKsP7YMPCM1Jc234gX9EWJv9iJHXcNuBiDDxB1xljgiUoZ48RmSH6kywNgmWfmv6LJVzUnU1IpprfY7ZXD46U6GCV70fPpR5KYbOKiJ/XLzkmx79VwY6RHbpDKF0t+78CxUmgOh9lp7b3A4LrpuaG+f80BLTdXCig8jkQvERUaPBVMJQasd3VXrUs+f2nV9kDoK/IH+MOygAyHTgjx3gBuP4MJLiXVgGuA4qAXdqRBccHyIoO4sztbLLD7Hnrc/dk2JxAEFHTsxsiw9OrNy425DxhMrXZhQDQqjcomIBckWBjwfMRvY19etxAohiPg2Nag6IbmpnJId6rVm2mDleXv8BTRGqhBYDeIRoIycW7kZUPStjKoUwFd0JJeeypfvvO1Q4OP/MoIzCjqQ8ytg9Hw3cvSP0C4I+7P5Vh4u1T1z84BWcBetPqirTsOzwCRQBBg4NNP5SxEnIP+vbqdoQzf0b0TirTzpRCAagmRDLBUXz6zNZMQkYQ== dmitronik@gmail.com"
}
