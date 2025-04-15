resource "azurerm_resource_group" "rg" {
  name     = format("%srg-%s", var.prefix, random_id.id.hex)
  location = var.location
}