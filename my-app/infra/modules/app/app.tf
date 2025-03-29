# resource "random_name" "app_name" {
#   length  = 16
#   special = false
# }

resource "azurerm_resource_group" "rg" {
  name     = "rg-${terraform.workspace}"
  location = var.location
}

resource "azurerm_static_web_app" "webapp" {
  name                = "webapp-${terraform.workspace}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}
