#backend
remote_state {
    backend = "azurerm"
    config = {
        resource_group_name = "tfstorage"
        storage_account_name = "terraformrocks"
        container_name = "tfstate"
        key = "${path_relative_to_include()}/terraform.tfstate"
    }
     generate = {
        path      = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
}

#var
inputs = {
    location = "eastus"
    rg_name = "azuremomo"
    storage_account_name = ""
    storage_account_tier = "Standard"
    storage_account_type = "LRS"
    os_type = "Windows"
    sku_name = "Y1"
    service_plan_name = ""
    app_insights_name = ""
    application_type = "other"
    function_app_name = ""
    event_schema = "EventGridSchema"
    eventrgid_sub_name = ""
    event_grid_topic = ""
    function_name    = ""
 }

