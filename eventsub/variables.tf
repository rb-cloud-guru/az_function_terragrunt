#rg name
variable rg_name {
    description = "Resource Group Name"
}

#location
variable "location" {
    description = "location"
}

#eventgrid sub name
variable "eventrgid_sub_name" {
    description = "eventgrid subscription name"
}

#function id
variable "function_id" {
    description = "azure function id"
}

#resource group id
variable "rg_id" {
    description = "resource group id"
}

#eventschema
variable "event_schema" {
    description = "Event Delivery Schema"
}

#event grid topic
variable "event_grid_topic" {
    description = "event grid topic"
}