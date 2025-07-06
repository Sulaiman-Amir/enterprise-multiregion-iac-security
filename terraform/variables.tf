variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-2" # adjust to London
}

variable "aws_az" {
  description = "AWS availability zone"
  type        = string
  default     = "eu-west-2a"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

