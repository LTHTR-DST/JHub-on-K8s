resource "azurerm_resource_group" "Resource_Group" {
  name     = "rg_JHubAKS_dev_we_001"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "aks_JHub_dev_we-001"
  location            = azurerm_resource_group.Resource_Group.location
  resource_group_name = azurerm_resource_group.Resource_Group.name
  dns_prefix          = "demoaksjhub001"

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
  value     = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}