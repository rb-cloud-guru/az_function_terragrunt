#instrumentation key
output "instrumentation_key" {
  value = azurerm_application_insights.windows-application-insights.instrumentation_key
  sensitive = true
}

#connection string
output "connection_string" {
  value = azurerm_application_insights.windows-application-insights.connection_string
  sensitive = true
}