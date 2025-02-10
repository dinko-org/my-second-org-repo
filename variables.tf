variable "AZURE_RESOURCE_GROUP_NAME" {
  description = "The name of the resource group in which the resources will be created."
  type = string
}

variable "rg_location" {
  description = "The location of the resource group in which the resources will be created."
  type = string
  default = "westeurope"
}
