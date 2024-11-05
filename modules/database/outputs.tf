output "mysql_server_fqdn" {
  description = "The fully qualified domain name of the MySQL server"
  value       = azurerm_mysql_server.mysql.fqdn
}
