resource "azurerm_mysql_flexible_server" "mysql" {
  name                = "ecommerce-mysql-server"
  location            = var.location
  resource_group_name = var.resource_group_name
  admin_username      = var.admin_login
  admin_password      = var.admin_password
  sku_name            = var.sku_name

  storage {
    storage_mb            = var.storage_mb
    backup_retention_days = var.backup_retention_days
    geo_redundant_backup  = var.geo_redundant_backup
  }

  high_availability {
    mode = "ZoneRedundant" # Or "SameZone" depending on your requirement
  }
}

resource "azurerm_mysql_flexible_database" "ecommerce_db" {
  name                = "ecommerce_db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  collation           = "utf8_general_ci"
  charset             = "utf8"
}
