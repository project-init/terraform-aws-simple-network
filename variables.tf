variable "account_name" {
  type        = string
  nullable    = false
  description = "The account name to create the vpc in. Will be used as the vpc name."
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for the VPC"
}
