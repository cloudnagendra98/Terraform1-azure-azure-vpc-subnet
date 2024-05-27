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


variable "azure_subnet1" {
  type        = list(string)
  default     = ["10.10.0.0/24"]
  description = "This is subnet cidr range"

}

variable "subnet_name" {
  type        = string
  default     = "web"
  description = "This is subnet1 name"

}