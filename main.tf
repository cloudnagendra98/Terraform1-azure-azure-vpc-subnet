resource "azurerm_resource_group" "ntier-azure" {
  name     = var.resource_group_name
  location = var.resource_group_location

}