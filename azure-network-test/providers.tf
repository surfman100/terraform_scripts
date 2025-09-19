terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstatedwaqq"
    container_name       = "tfstate"
    key                  = "Nnynw2h/TzVhUWAU3hDeum8HhTX905cYiLGyue1zl49DMPNesWh68KohY1p35r07g6TPHgsv+yHt+AStkFtwTQ=="
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  subscription_id = "fece1150-643c-4bb1-be26-508d82c00607"
  features {}
}
