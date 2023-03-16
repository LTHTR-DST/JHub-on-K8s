variable "resource_group_name" {
    type = string
    description = "Name for Resource Group"
    default = "rg-aks"
  }

  variable "kubernetes_cluster_name" {
    type = string
    description = "Cluster Name"
    default = "aks-democluster"
  }

