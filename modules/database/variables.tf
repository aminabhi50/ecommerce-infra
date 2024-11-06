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
}

variable "sql_admin_username" {
  description = "The administrator username for SQL server"
  type        = string
}

variable "sql_admin_password" {
  description = "The administrator password for SQL server"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the SQL database"
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the SQL Database"
  type        = string
  default     = "Basic"
}

variable "max_size_gb" {
  description = "The max size of the SQL database in GB"
  type        = number
  default     = 5
}
