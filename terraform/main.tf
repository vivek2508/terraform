terraform {
  backend "azurerm" {
    resource_group_name  = "MyRg"
    storage_account_name = "storage1509"
    container_name       = "conatiner1509"
    key                  = "terraformgithubexample.tfstate"
  }
 required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

provider "azurerm" {
  features {}
}
}
 
data "azurerm_client_config" "current" {}
 
#Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = "tamops"
  location = "eastus2"
}
