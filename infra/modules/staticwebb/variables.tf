variable "appname" {
   description = "he name which should be used for this Static Web App"
    type = string
}

variable "rg_name" {
    description = "The name of the Resource Group where the Static Web App should exist. "
    type = string
}

variable "location" {
    description = "The location of the webbapp"
    type = string
}

variable "sku_tier" {
    description = "SKU tier of the Static Web App."
  
}

variable "sku_size" {
    description = "The SKU size of the Static Web App."
    type = string
  
}

variable "tags" {
    description = "A mapping of tags to assign to the resource."
    type = map(string)
}