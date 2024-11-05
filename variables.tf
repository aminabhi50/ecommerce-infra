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
  default = "adminpassword"
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
  default = "dbadminpassword"
}

variable "db_sku_name" {
  description = "Database SKU name"
  default     = "B_Gen5_1"
}

variable "db_storage_gb" {
  description = "Database storage size in GB"
  type = number
  default = 4
}

variable "db_backup_retention_days" {
  description = "Database backup retention in days"
  default     = 7
}

variable "db_geo_redundant_backup" {
  description = "Enable geo-redundant backup for the database"
  default     = "Enabled"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the MySQL server"
}
