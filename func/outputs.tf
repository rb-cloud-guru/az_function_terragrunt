#outputs
output "func_id" {
  value = azurerm_function_app_function.ps.id
  sensitive = true
}