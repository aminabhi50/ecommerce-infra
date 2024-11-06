resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.ecommerce_rg.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_mssql_database" "sql_db" {
  name                = var.database_name
  server_id   = azurerm_mssql_server.sql_server.id
  sku_name            = var.sku_name
  max_size_gb        = var.max_size_gb
}

resource "azurerm_mssql_firewall_rule" "sql_fw_rule" {
  name                = "AllowAllAzureIps"
  server_id   = azurerm_mssql_server.sql_server.id
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}
