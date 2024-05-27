resource "azurerm_virtual_network" "vnet-azure" {
  name                = "azurevnet"
  resource_group_name = azurerm_resource_group.ntier-azure.name
  address_space       = [var.azure_vnet_cidr]
  #address_space       = var.azure_vnet_cidr we changed this to as above, as we written this time variable as type string so we put brackets [] here
  location = azurerm_resource_group.ntier-azure.location
  depends_on = [
    azurerm_resource_group.ntier-azure
  ]
}

resource "azurerm_subnet" "subnets" {
  count = length(var.subnet_address_prefixes)
  #count = 3 ; I dont need to specially define a variable called as count again in inputs.tf as we use here function length and above we use length function in place of count=3
  name = var.subnet_names[count.index] # get the names based on count from variable subnet_names
  #name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.ntier-azure.name
  virtual_network_name = azurerm_virtual_network.vnet-azure.name
  #address_prefixes     = var.azure_subnet1
  address_prefixes = [var.subnet_address_prefixes[count.index]] #get the address prefix based on count from variable subnet_address_prefixes
  depends_on = [
    azurerm_resource_group.ntier-azure,
    azurerm_virtual_network.vnet-azure
  ]

}