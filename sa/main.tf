
#tf
terraform {
  backend "azurerm" {}
}

provider "azurerm" {
	features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

#create a storage account for the azure function
resource "azurerm_storage_account" "linux-storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_type

#tags
  tags = {
    environment = "dev"
  }
}

