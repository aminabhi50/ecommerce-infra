resource "azurerm_mysql_flexible_server" "mysql" {
  name                = "ecommerce-mysql-server"
  location            = var.location
  resource_group_name = var.resource_group_name
  administrator_login = var.admin_login
  administrator_password = var.admin_password
  
  high_availability {
    mode = "SameZone" # Set this to "SameZone" if you prefer single-zone availability
  }
}

resource "azurerm_mysql_flexible_database" "ecommerce_db" {
  name                = "ecommerce_db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  collation           = "utf8_general_ci"
  charset             = "utf8"
}
