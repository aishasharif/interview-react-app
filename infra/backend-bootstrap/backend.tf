terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.9"
    }
  }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate-rg"
  location = "UK South"
}

resource "random_string" "sa_suffix" {
  length  = 5
  upper   = false
  special = false
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstate${random_string.sa_suffix.result}"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name =   azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

