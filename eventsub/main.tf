#provider
provider "azurerm" {
	features {}
}

#event subscription
resource "azurerm_eventgrid_event_subscription" "evtgrid" {
  name = var.eventrgid_sub_name
  scope = var.rg_id
  event_delivery_schema = var.event_schema

   azure_function_endpoint {
    function_id = var.function_id
  }
}

