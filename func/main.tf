

#provider
provider "azurerm" {
	features {}
}

#function service plan
resource "azurerm_service_plan" "windows-service-plan" {
  name                = var.service_plan_name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

#main function
resource "azurerm_windows_function_app" "windows-ps-function-app" {
  name                = var.function_app_name
  resource_group_name = var.rg_name
  location            = var.location
  
  service_plan_id            = azurerm_service_plan.windows-service-plan.id
  storage_account_name       = var.account_name ## input1
  storage_account_access_key = var.pri_access_key # input2
  https_only                 = true
  site_config {
    application_insights_key = var.instrumentation_key
    application_insights_connection_string = var.connection_string
    application_stack {
      powershell_core_version = 7.2 #FUNCTIONS_WORKER_RUNTIME        
                      }
              }
  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.instrumentation_key
  }
}

#function app
resource "azurerm_function_app_function" "ps" {
  name            = var.function_name
  function_app_id = azurerm_windows_function_app.windows-ps-function-app.id
  language        = "PowerShell"
  
  file {
    name    = "run.ps1"
    content = file ("${path.module}/run.ps1")
  }
  
  config_json = jsonencode({
    "scriptFile": "run.ps1"
    "bindings": [
      {
        "type":"eventGridTrigger",
        "name":"eventData",
        "direction":"in"
      }
    ]
  }
  )
}

  


