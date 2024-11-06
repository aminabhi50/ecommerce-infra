output "vnet_id" {
  description = "ID of the virtual network"
  value       = module.networking.network_id
}

output "vm_id" {
  description = "ID of the virtual machine"
  value       = module.vm.vm_id
}

output "sql_server_name" {
  description = "The name of the SQL server"
  value       = module.sql_database.sql_server_name
}

output "sql_database_name" {
  description = "The name of the SQL database"
  value       = module.sql_database.sql_database_name
}

output "sql_server_fqdn" {
  description = "The fully qualified domain name of the SQL server"
  value       = module.sql_database.sql_server_fqdn
}

output "sql_admin_username" {
  description = "The admin username for the SQL server"
  value       = module.sql_database.sql_admin_username
}
