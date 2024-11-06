variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret"{
 type = string
}

variable "location" {
  description = "Azure region where resources will be created"
  default     = "East US"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_space" {
  description = "Address space for the subnet"
  default     = ["10.0.1.0/24"]
}

variable "admin_username" {
  description = "Admin username for the VM"
  default     = "adminuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  sensitive   = true
  default = "Adminpassword@123"
}

variable "vm_size" {
  description = "Size of the VM"
  default     = "Standard_B1s"
}

variable "db_admin_login" {
  description = "Admin login for the database"
  default     = "dbadmin"
}

variable "db_admin_password" {
  description = "Admin password for the database"
  sensitive   = true
  default = "Dbadminpassword@123"
}

variable "db_sku_name" {
  description = "Database SKU name"
  default     = "B_Standard_B1s"
}
