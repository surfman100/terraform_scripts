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
  default     = "vnet1"
}

variable "vnet_address_space" {
  description = "The address space for the VNET"
  type        = list
  default     = ["10.0.0.0/16"]
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = list
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = list
  default     = ["10.0.2.0/24"]
}