module "resource_group" {
    source = "./modules/resourcegroup"
    location = var.location
    rg_name= var.rg_name
}

module "azurerm_static_web_app" {
    source = "./modules/staticwebb"
    appname = var.appname
    location = module.resource_group.location
    rg_name = module.resource_group.rg_name
    sku_size = var.sku_size
    sku_tier = var.sku_tier
    tags = var.tags
}
