module "Storage" {
    source = "./modules/Storage"

    subscription_id = var.subscription_id
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location
}

module "VM" {
    source = "./modules/VM"

    subscription_id = var.subscription_id
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location
}

module "Web" {
    source = "./modules/Web"

    subscription_id = var.subscription_id
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location
}