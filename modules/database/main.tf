# modules/database/main.tf

resource "azurerm_mysql_flexible_server" "mysql" {
  name                = "ecommerce-mysql-server"
  location            = var.location
  resource_group_name = var.resource_group_name
  administrator_login = var.admin_login
  administrator_password = var.admin_password
  version             = "8.0"
  
  sku_name = var.sku_name

  storage {
    size_gb              = var.storage_size_gb
    backup_retention_days = var.backup_retention_days
    geo_redundant_backup = var.geo_redundant_backup
  }

  high_availability {
    mode = "SameZone" # Set this to "SameZone" if you prefer single-zone availability
  }

  network {
    delegated_subnet_id = var.subnet_id
  }
}

resource "azurerm_mysql_flexible_database" "ecommerce_db" {
  name                = "ecommerce_db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  collation           = "utf8_general_ci"
  charset             = "utf8"
}
