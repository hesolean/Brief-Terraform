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

variable "storage_account_name" {
  type = string
  description = "Nom du compte de stockage"
  default = "hdubourgstorageaccount"
}

variable "storage_container_name" {
  type = string
  description = "Nom du groupe de ressources"
  default = "hdubourgstoragecontainer"
}
