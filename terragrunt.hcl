#backend
remote_state {
    backend = "azurerm"
    config = {
        resource_group_name = "tfstorage"
        storage_account_name = "terraformrocks"
        container_name = "tfstatedev"
        key = "${path_relative_to_include()}/terraform.tfstate"
    }
}

#var
inputs = {
    location = "eastus"
    resource_group_name = "azurefunc"
    storage_account_name = "har3ika1980"
    storage_account_tier = "Standard"
    storage_account_type = "LRS"
    os_type = "Linux"
    sku_name = "Y1"
    service_plan_name = "tonton1976"
    app_insights_name = "appinsightsma3"
    application_type = "other"
    function_app_name = "linuxfunct2"
 }

