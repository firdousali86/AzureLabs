output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "vnet_name" {
  value = module.virtual_network.vnet_name
}

output "subnet_ids" {
  value = module.virtual_network.subnet_ids
}
