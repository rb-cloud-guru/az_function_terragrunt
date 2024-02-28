param($EventData,$TriggerMetadata)
Write-Host "New event occurred ..."
$EventData| ConvertTo-Json | Write-Host
