resource "azurerm_resource_group" "rg_01" {
  name     = "rg-hans-tfcloud-dev"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet_01" {
  name                = "vnet-hans-tfcloud-dev"
  resource_group_name = azurerm_resource_group.rg_01.name
  location            = azurerm_resource_group.rg_01.location
  address_space       = ["10.0.0.0/16"]
}