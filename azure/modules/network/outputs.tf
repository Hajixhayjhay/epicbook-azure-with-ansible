output "public_subnet_id" {
  value = azurerm_subnet.public_subnet.id
}

output "public_nsg_id" {
  value = azurerm_network_security_group.public_nsg.id
}

output "database_nsg_id" {
  value = azurerm_network_security_group.database_nsg.id
}
output "private_subnet_id" {
  value = azurerm_subnet.private_subnet.id
}