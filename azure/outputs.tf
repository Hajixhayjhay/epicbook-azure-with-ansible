output "frontend_public_ip" {
  value = module.compute.frontend_public_ip
}


output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}


output "public_nsg_id" {
  value = module.network.public_nsg_id
}

output "database_nsg_id" {
  value = module.network.database_nsg_id
}

output "mysql_fqdn" {
  value = module.database.mysql_fqdn
}
