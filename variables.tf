variable "resource_group_name" {
    type = string
    default = "tf-rg3000" 
}

variable "location" {
    type = string
    default = "West US"
}

variable "app-plan" {
    type = string
    default = "appplan1000"
}

variable "web-app-name" {
    type = string
    default = "apppython1000"
  
}
variable "subscription_id" {}

variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}