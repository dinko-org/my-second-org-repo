variable "environments" {
  type    = list(string)
  default = ["dev", "test", "production"]
}

variable "location" {
  description = "The location of the resource group in which the resources will be created."
  type = string
  default = "westeurope"
}

variable "prefix" {
  type    = string
  default = "rg-dinko"
}

