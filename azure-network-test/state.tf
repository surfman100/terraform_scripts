# state.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstatedwaqq"
    container_name       = "tfstate"
    key                  = ""
  }
}
