variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
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
  default     = "S1"
}

variable "max_size_gb" {
  description = "The maximum size of the SQL database"
  type        = number
  default     = 5
}
