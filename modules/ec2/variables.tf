variable "ami_id" {
  type        = string
  description = "Ami id of my Ec2"
}

variable "instance_type" {
  type        = string
  description = "Instance type of my Ec2"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of my Ec2"
}

variable "ec2_count" {
  type        = string
  description = "No of my Ec2 to be created"
}

variable "env" {
  type        = string
  description = "What env we are creating (dev, qa, production)"
}


