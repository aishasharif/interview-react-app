terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.24.0"
    }
  }

}
provider "azurerm" {
  features {}
}


module "webapp" {
  source = "./modules/app"
  location = var.location
  branch          = var.branch
  repository_url  = var.repository_url
}
