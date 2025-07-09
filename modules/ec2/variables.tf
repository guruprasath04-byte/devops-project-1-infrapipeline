variable "ami_id" {
  type        = string
  description = "AMI ID of the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type of the EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID to launch the EC2 instance in"
}

variable "ec2_count" {
  type        = number
  description = "Number of EC2 instances to be created"
}

variable "env" {
  type        = string
  description = "Deployment environment (e.g., dev, qa, prod)"
}


