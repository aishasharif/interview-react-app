terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.9"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate-rg"
      storage_account_name = "tfstatesibe3"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}