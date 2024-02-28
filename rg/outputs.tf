#outputs rg id
output "rg_id" {
    value = azurerm_resource_group.rg.id
    sensitive = true
}
      
    