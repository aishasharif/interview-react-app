variable "location" {
  description = "Azure region to deploy resources into"
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

variable "environment" {
    description = "Deployment environment"
    type = string
}

variable "rg_prefix" {
    description = "The resource froup prefix"
    type = string
    default = "rg"
}

variable "stweb_prefix" {
    description = "Prefix for Static Web App"
    type        = string
    default     = "stweb"
}

variable "project_name" {
  description = "Project or application name"
  type        = string
  default = "reactapp"
}