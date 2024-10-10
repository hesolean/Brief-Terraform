# Création du compte de stockage
resource "azurerm_storage_account" "storage_account" {
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  name = var.storage_account_name

  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

# Création du conteneur de stockage
resource "azurerm_storage_container" "storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"  # ou "blob" ou "container" selon tes besoins
}
