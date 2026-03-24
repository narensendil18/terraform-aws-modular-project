variable "region" {
  description = "AWS region"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instances" {
  description = "Map of EC2 instances to create"
  type = map(object({
    instance_type = string
    name          = string
  }))
}