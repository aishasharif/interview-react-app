terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfstatestorage"
    container_name       = "tfstate"
    key                  = "react-app/terraform.tfstate"
  }
}
