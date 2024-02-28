#region
variable location {
    description = "Location of the Virtual Net"
}

#rg name
variable rg_name {
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

#resource group id
variable "rg_id" {
    description = "resource group id"
}

#eventschema
variable "event_schema" {
    description = "Event Delivery Schema"
}

#eventgrid sub name
#variable "eventrgid_sub_name" {
#    description = "eventgrid subscription name"
#}

#eventgrid topic
variable "event_grid_topic" {
  description = "event grid topic"
}

#function name
variable "function_name" {
  description = "function name"
}
