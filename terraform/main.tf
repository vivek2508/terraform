terraform {
  backend "azurerm" {
    resource_group_name  = "MyRg"
    storage_account_name = "storage1509"
    container_name       = "conatiner1509"
    key                  = "terraformgithubexample.tfstate"
  }
}
required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
  
