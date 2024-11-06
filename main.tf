# Resource Group Definition
resource "azurerm_resource_group" "ecommerce_rg" {
  name     = "ecommerce-platform-rg"
  location = var.location
}

# Networking Module
module "networking" {
  source               = "./modules/networking"
  location             = azurerm_resource_group.ecommerce_rg.location
  resource_group_name  = azurerm_resource_group.ecommerce_rg.name
  vnet_address_space   = var.vnet_address_space
  subnet_address_space = var.subnet_address_space
}

# VM Module
module "vm" {
  source              = "./modules/vm"
  location            = azurerm_resource_group.ecommerce_rg.location
  resource_group_name = azurerm_resource_group.ecommerce_rg.name
  subnet_id           = module.networking.subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  vm_size             = var.vm_size
}

# Database Module
module "sql_database" {
  source               = "./modules/database"
  resource_group_name  = azurerm_resource_group.ecommerce_rg.name
  location             = azurerm_resource_group.ecommerce_rg.location
  sql_server_name      = var.sql_server_name
  sql_admin_username   = var.sql_admin_username
  sql_admin_password   = var.sql_admin_password
  database_name        = var.database_name
  sku_name             = var.sku_name
  max_size_gb          = var.max_size_gb
}