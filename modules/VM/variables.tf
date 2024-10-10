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

variable "virtual_network_name" {
  type = string
  description = "Nom du réseau vnet"
  default = "de_p1_vnet"
}

variable "subnet_name" {
  type = string
  description = "Nom du sous-réseau"
  default = "de_p1_subnet"
}

variable "subnet_id" {
  type = string
  description = "ID du subnet"
  default = "/subscriptions/029b3537-0f24-400b-b624-6058a145efe1/resourceGroups/de_p1_resource_group/providers/Microsoft.Network/virtualNetworks/de_p1_vnet/subnets/de_p1_subnet"
}

variable "public_ip_name" {
  type = string
  description = "Nom de l'adresse ip"
  default = "hdubourgip"
}

variable "security_group_rule_name" {
  type = string
  description = "Nom du groupe de sécurité et des règles"
  default = "hdubourgsecurity"
}

variable "network_interface_id" {
  type = string
  description = "Nom de l'interface de network"
  default = "/subscriptions/029b3537-0f24-400b-b624-6058a145efe1/resourceGroups/de_p1_resource_group/providers/Microsoft.Network/networkInterfaces/helene_dubourg_nic"
}

variable "vm_storage_name" {
  type = string
  description = "Nom du compte de stockage de la vm"
  default = "hdubourgvmstorage"
}

variable "vm_name" {
  type = string
  description = "Nom de la machine virtuelle"
  default = "hdubourgvm"
}