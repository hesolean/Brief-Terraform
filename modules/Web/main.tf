# Creation de la web app
resource "azurerm_linux_web_app" "webb_app" {
  name                = var.web_app_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id
  site_config {
   }
}
