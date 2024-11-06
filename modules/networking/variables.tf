variable "location" {
  description = "Azure region for networking resources"
  default = "East US"
}

variable "resource_group_name" {
  description = "Resource group for networking resources"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_address_space" {
  description = "Address space for the subnet"
  type        = list(string)
}
