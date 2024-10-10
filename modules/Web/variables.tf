variable "subscription_id" {
  type = string
  description = "ID de la souscription"
}

variable "resource_group_name" {
  type = string
  description = "Nom du groupe de ressources"
}

variable "resource_group_location" {
  type = string
  description = "Localisation du groupe de ressources"
}

variable "web_app_name" {
  type = string
  description = "Nom de la webapp"
  default = "hdubourgwebapp"
}

variable "service_plan_id" {
  type = string
  description = "Id du service plan"
  default = "/subscriptions/029b3537-0f24-400b-b624-6058a145efe1/resourceGroups/de_p1_resource_group/providers/Microsoft.Web/serverFarms/de_p1_service_plan"
}