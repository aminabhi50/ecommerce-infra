output "mysql_server_fqdn" {
  description = "The fully qualified domain name of the MySQL server"
  value       = azurerm_mysql_flexible_server.mysql.fqdn
}
