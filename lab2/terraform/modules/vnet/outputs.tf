output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  value = [
    azurerm_subnet.subnet1.id,
    azurerm_subnet.subnet2.id
  ]
}
