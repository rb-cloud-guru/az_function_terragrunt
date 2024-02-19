#account name
output account_name {
    value = azurerm_storage_account.linux-storage-account.name
}

#access_key
output pri_access_key {
    value = azurerm_storage_account.linux-storage-account.primary_access_key
    sensitive = true
}