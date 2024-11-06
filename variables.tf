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

variable "sql_server_name" {
  description = "The name of the SQL server"
  type        = string
  default     = "ecommerce-sql-server"
}

variable "sql_admin_username" {
  description = "The admin username for SQL Server"
  type        = string
  default     = "sqladmin"
}

variable "sql_admin_password" {
  description = "The admin password for SQL Server"
  type        = string
  default     = "Sqladmin@123"
}

variable "database_name" {
  description = "The name of the SQL database"
  type        = string
  default     = "ecommerce-sql-database"
}

variable "sku_name" {
  description = "The SKU name for the SQL Database"
  type        = string
  default     = "Basic"
}

variable "max_size_gb" {
  description = "The maximum size of the SQL database"
  type        = number
  default     = 5
}
