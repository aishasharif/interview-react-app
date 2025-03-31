variable "location" {
  description = "Azure region to deploy resources into"
  type        = string
}

variable "appname" {
  description = "Name of the Azure Static Web App"
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource Group to associate the Static Web App with"
  type        = string
}

variable "sku_tier" {
  description = "SKU tier for the Static Web App (e.g., Free, Standard)"
  type        = string
  default     = "Free"
}

variable "sku_size" {
  description = "SKU size for the Static Web App (usually same as tier)"
  type        = string
  default     = "Free"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
