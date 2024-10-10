# Creation des groupes de sécurité et des règles
resource "azurerm_network_security_group" "security_group_rule" {
  name                = var.security_group_rule_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "SSH"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "web"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

# Connexion du groupe de sécurité à l'interface network
resource "azurerm_network_interface_security_group_association" "security_nic_con" {
  network_interface_id      = var.network_interface_id
  network_security_group_id = azurerm_network_security_group.security_group_rule.id
}

# Creation du compte de stockage
resource "azurerm_storage_account" "vm_storage" {
  name                     = var.vm_storage_name
  location                 = var.resource_group_location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


# Creation de la machine virtuelle
resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                  = var.vm_name
  admin_username        = "azureuser"
  admin_password        = random_password.password.result
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.network_interface_id]
  size                  = "Standard_DS1_v2"
  disable_password_authentication = false

  os_disk {
    name                 = "hdlinuxos_disk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

source_image_reference {
  publisher = "RedHat"
  offer     = "RHEL"
  sku       = "8-LVM"
  version   = "latest"
}

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.vm_storage.primary_blob_endpoint
  }
}

# Generation d'un mot de passe aléatoire
resource "random_password" "password" {
  length      = 20
  min_lower   = 1
  min_upper   = 1
  min_numeric = 1
  min_special = 1
  special     = true
}
