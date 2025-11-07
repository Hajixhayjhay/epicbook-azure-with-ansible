resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "epicbook-db"
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.mysql_admin_username
  administrator_password = var.mysql_admin_password
  sku_name               = "B_Standard_B1ms"
  version                = "5.7"
  delegated_subnet_id    = var.private_subnet_id
}

resource "azurerm_mysql_flexible_database" "epicbook_db" {
  name                = var.mysql_database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_ci"
}

# 👇 Add this block to disable SSL requirement for your database
resource "azurerm_mysql_flexible_server_configuration" "disable_ssl" {
  name                = "require_secure_transport"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.mysql.name
  value               = "OFF"
}
