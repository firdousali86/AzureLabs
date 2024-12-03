variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the VM."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VM."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to attach the VM."
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "os_type" {
  description = "OS type for the VM. Options: 'Windows', 'Linux'."
  type        = string
  default     = "Windows"
}

variable "os_version" {
  description = "Specific version of the OS to deploy."
  type        = string
  default     = "2019-Datacenter"
}
