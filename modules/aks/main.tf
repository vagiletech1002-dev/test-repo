
variable "enable" {}

resource "azurerm_resource_group" "rg" {
  count    = var.enable ? 1 : 0
  name     = "aks-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  count               = var.enable ? 1 : 0
  name                = "demo-aks"
  location            = azurerm_resource_group.rg[0].location
  resource_group_name = azurerm_resource_group.rg[0].name
  dns_prefix          = "aksdemo"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
