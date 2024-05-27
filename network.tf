resource "azurerm_virtual_network" "vnet-azure" {
  name                = "azurevnet"
  resource_group_name = azurerm_resource_group.ntier-azure.name
  address_space       = var.azure_vnet_cidr
  location            = azurerm_resource_group.ntier-azure.location
  depends_on = [
    azurerm_resource_group.ntier-azure
  ]
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.ntier-azure.name
  virtual_network_name = azurerm_virtual_network.vnet-azure.name
  address_prefixes     = var.azure_subnet1

  depends_on = [
    azurerm_resource_group.ntier-azure,
    azurerm_virtual_network.vnet-azure
  ]

}