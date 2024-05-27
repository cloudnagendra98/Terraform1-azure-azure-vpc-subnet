variable "resource_group_name" {
  type        = string
  default     = "a_ntier"
  description = "This is resource group name"

}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "This is resource group location"
}


variable "azure_vnet_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is virtual network range"

}

variable "subnet_names" {
  type        = list(string)
  default     = ["web", "app", "db"]
  description = "These are subnet names"

}

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
  description = "These are subnet address prefixes"

}

#variable "azure_vnet_cidr" {
#  type        = list(string)
#  default     = ["10.10.0.0/16"]
#  description = "This is virtual network range"
#
#}


#variable "azure_subnet1" {
#  type        = list(string)
#  default     = ["10.10.0.0/24"]
#  description = "This is subnet cidr range"
#
#}

#variable "subnet_name" {
#  type        = string
#  default     = "web"
#  description = "This is subnet1 name"

#}