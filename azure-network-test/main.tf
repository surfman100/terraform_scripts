resource "azurerm_resource_group" "vnet_rg" {
  name     = var.resourcegroup
  location = var.region
}