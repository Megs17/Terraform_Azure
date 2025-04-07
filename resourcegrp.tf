resource "azurerm_resource_group" "mtc-rg" {
  name     = "mtc-resources"
  location = "francecentral"
  tags = {
    environment = "dev"
  }
}

