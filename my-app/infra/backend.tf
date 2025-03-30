terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfstatestorage3004"
    container_name       = "tfstate"
    key                  = "react-app/terraform.tfstate"
  }
}
