variable "env" {
  type        = string
  description = "What env we are creating (dev, qa, production)"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "SUBNET VPC"
}

variable "az" {
  type        = string
  description = "availability zone of the subnet"
}