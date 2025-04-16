resource "azurerm_resource_group" "rg" {
  name     = format("%s-rg", var.prefix)
  location = var.location
}