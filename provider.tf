terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.93.0"
    }
  }
}
#provider
provider "azurerm" {
    features {}
    subscription_id = ""
    client_id = ""
    client_secret = ""
    tenant_id = ""
}