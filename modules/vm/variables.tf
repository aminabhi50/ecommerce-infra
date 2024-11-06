variable "location" {
  description = "Azure region for the VM"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group where the VM is deployed"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the VM's NIC"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "VM instance size"
  type        = string
}
