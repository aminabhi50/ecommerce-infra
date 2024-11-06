variable "location" {
  description = "Azure region for the MySQL server"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group for the MySQL server"
  type        = string
}

variable "admin_login" {
  description = "Admin login for the MySQL server"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the MySQL server"
  type        = string
  sensitive   = true
}

variable "sku_name" {
  description = "SKU name for the MySQL server"
  type        = string
}