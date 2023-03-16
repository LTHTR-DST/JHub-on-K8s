resource "azurerm_resource_group" "Resource_Group" {
  name     = var.resource_group_name
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.Resource_Group.location
  resource_group_name = azurerm_resource_group.Resource_Group.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.cluster.kube_config_raw

  sensitive = true
}