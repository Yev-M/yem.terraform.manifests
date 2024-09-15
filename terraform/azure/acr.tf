resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.acr-rg.name
  location            = azurerm_resource_group.acr-rg.location
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled
  tags = var.tags
}