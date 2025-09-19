variable "region" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "northeurope"
}

variable "resourcegroup" {
  description = "The resouce group"
  type        = string
  default     = "rg-network-test"
}

variable "vnet_name" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}