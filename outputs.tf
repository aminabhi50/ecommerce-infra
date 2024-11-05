output "vnet_id" {
  description = "ID of the virtual network"
  value       = module.networking.network_id
}

output "vm_id" {
  description = "ID of the virtual machine"
  value       = module.vm.vm_id
}

output "mysql_server_fqdn" {
  description = "Fully qualified domain name of the MySQL server"
  value       = module.database.mysql_server_fqdn
}
