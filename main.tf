terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "cd55689a-8fba-47e3-a7bf-9d09309bd374"
  features {}
}





