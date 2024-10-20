
resource "azurerm_resource_group" "app-rgp" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "app-plan" {
  name                = var.app-plan
  location            = var.location
  resource_group_name = azurerm_resource_group.app-rgp.name
  os_type = "Linux"
  sku_name = "S1"

 
  // zone_redundant = true

  depends_on = [azurerm_resource_group.app-rgp]
}

resource "azurerm_linux_web_app" "app-python" {
  name                = var.web-app-name
  resource_group_name = azurerm_resource_group.app-rgp.name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app-plan.id

  site_config {

    application_stack {
      python_version = 3.11

      }
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }

  depends_on = [ azurerm_service_plan.app-plan ]
}