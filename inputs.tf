variable "resource_group_name" {
  type        = string
  default     = "ntier"
  description = "This is resource group name"

}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "This is resource group location"
}


variable "azure_vnet_cidr" {
  type        = list(string)
  default     = ["10.10.0.0/16"]
  description = "This is virtual network range"

}


