variable "location" {
  description = "Azure region to deploy resources in"
  default     = "UK South"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
}
