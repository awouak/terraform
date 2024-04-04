# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
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
  features {}

  subscription_id = "c5ab6b94-f2b3-4669-90b6-c1c681d23add"
}

# Création de la ressource "azurerm_ressource_group" si elle n'est pas présente

resource "azurerm_resource_group" "example" {
  name     = "azurerm_resource_group"
  location = "East US"
}
