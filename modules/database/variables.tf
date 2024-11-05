variable "location" {
  description = "Azure region for the MySQL server"
  type        = string
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

variable "storage_mb" {
  description = "Storage in MB for the MySQL server"
  type        = number
}

variable "backup_retention_days" {
  description = "Backup retention days for the MySQL server"
  type        = number
}

variable "geo_redundant_backup" {
  description = "Enable geo-redundant backups for the MySQL server"
  type        = string
}
