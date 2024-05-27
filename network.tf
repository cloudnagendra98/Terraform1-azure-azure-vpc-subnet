resource "azurerm_virtual_network" "vnet-azure" {
  name                = "azurevnet"
  resource_group_name = azurerm_resource_group.ntier-azure.name
  address_space       = var.azure_vnet_cidr
  location            = azurerm_resource_group.ntier-azure.location
}

