resource "azurerm_mysql_server" "mysql" {
  name                = "ecommerce-mysql"
  location            = var.location
  resource_group_name = var.resource_group_name
  administrator_login = var.admin_login
  administrator_login_password = var.admin_password
  sku_name            = var.sku_name
  storage_profile {
    storage_mb            = var.storage_mb
    backup_retention_days = var.backup_retention_days
    geo_redundant_backup  = var.geo_redundant_backup
  }
}

resource "azurerm_mysql_database" "ecommerce_db" {
  name                = "ecommerce_db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}
