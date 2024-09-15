resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags = var.tags
}

resource "azurerm_container_registry" "example" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled
  tags = var.tags
}
