#provider
provider "azurerm" {
	features {}
}

#application insights  
resource "azurerm_application_insights" "windows-application-insights" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.rg_name
  application_type    = var.application_type
  #tags
  tags = {
    environment = "dev"
  }
}