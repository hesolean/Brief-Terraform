# Configure le provider Azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

# Déclare le provider Azure
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}
