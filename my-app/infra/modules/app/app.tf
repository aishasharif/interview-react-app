resource "azurerm_resource_group" "rg" {
  name     = "rg-${terraform.workspace}"
  location = var.location
}

resource "time_sleep" "wait_for_rg" {
  depends_on = [azurerm_resource_group.rg]
  create_duration = "20s"
}

resource "azurerm_static_web_app" "webapp" {
  name                = "webapp-${terraform.workspace}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  
  depends_on = [azurerm_resource_group.rg]
}
