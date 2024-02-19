#region
variable location {
    description = "Location of the Virtual Net"
}

#rg name
variable resource_group_name {
    description = "Resource Group Name for the virtual net"
}

#service plan name
variable service_plan_name {
    description = "The name of the service plan name"
}

#os type
variable os_type {
    description = "The function os type"
}

#sku name
variable sku_name {
    description = "The function sku name"
}

#function name
variable function_app_name {
    description = "Name of the Linux Function"
}

#storage account name
variable account_name {
    description = "Name of the sa"
}

#primary access key
variable pri_access_key  {
    description = "name of the access key"
     type       = string
}

#instrumentaion key
variable instrumentation_key {
    description = "name of the instrumentation key"
}

#connection string
variable connection_string {
    description = "name of the connection string"
}