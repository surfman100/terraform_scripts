terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  subscription_id = "fece1150-643c-4bb1-be26-508d82c00607"
  features {}
}
