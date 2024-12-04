output "bastion_public_ip" {
  description = "Public IP of the Bastion Host"
  value       = azurerm_public_ip.bastion.ip_address
}

output "vm_private_ip" {
  description = "Private IP of the Virtual Machine"
  value       = azurerm_network_interface.vm.private_ip_address
}
