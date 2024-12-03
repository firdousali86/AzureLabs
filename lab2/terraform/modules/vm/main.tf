resource "azurerm_network_interface" "nic" {
  name                = "myVM-nic"
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = "myVM"
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "myOSDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "myVM"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent = var.os_type == "Windows"
  }

  storage_image_reference {
    publisher = var.os_type == "Windows" ? "MicrosoftWindowsServer" : "Canonical"
    offer     = var.os_type == "Windows" ? "WindowsServer" : "UbuntuServer"
    sku       = var.os_version
    version   = "latest"
  }
}
