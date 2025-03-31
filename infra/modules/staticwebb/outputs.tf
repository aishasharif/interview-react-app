output "static_site_api_key" {
  value     = azurerm_static_web_app.webapp.api_key
  sensitive = true
}

output "static_webapp_default_host_name" {
  value = azurerm_static_web_app.webapp.default_host_name
}