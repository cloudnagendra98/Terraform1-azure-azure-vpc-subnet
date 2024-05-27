resource_group_name     = "ntier-prod"
resource_group_location = "eastus"
#azure_vnet_cidr         = ["10.10.0.0/16"] as we changed this as string in variable from list(string) so we removed brackets as below
azure_vnet_cidr         = "10.10.0.0/16"
subnet_address_prefixes = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
subnet_names            = ["web", "app", "db", "mgmt"]