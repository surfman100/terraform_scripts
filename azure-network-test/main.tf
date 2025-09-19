resource "azurerm_resource_group" "vnet_rg" {
  name     = var.resourcegroup
  location = var.region
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.vnet_rg.location
  resource_group_name = azurerm_resource_group.vnet_rg.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = "${var.vnet_name}-public"
  resource_group_name  = azurerm_resource_group.vnet_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.public_subnet_cidr
}

resource "azurerm_subnet" "subnet2" {
  name                 = "${var.vnet_name}-backend"
  resource_group_name  = azurerm_resource_group.vnet_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.private_subnet_cidr
}