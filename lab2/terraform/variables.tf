variable "location" {
  description = "Azure region where resources will be created."
  default     = "UK South"
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine."
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM."
  type        = string
  sensitive   = true
}

variable "os_type" {
  description = "OS type for the VM. Options: 'Windows', 'Linux'."
  default     = "Windows"
}

variable "os_version" {
  description = "Specific version of the OS to deploy."
  default     = "2019-Datacenter"
}
