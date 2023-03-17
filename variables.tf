variable "location" {
    type = string
    description = "region location"
    default = "West Europe"
}

variable "location_id" {
    type = string
    description = "region location code id"
    default = "we"
}

variable "environment" {
    type = string 
    description = "runtime envinonment (dev,test,prod)"
    default = "dev"
}

variable "resource_group_name" {
    type = string
    description = "Name for Resource Group"
    default = "rg-aksJHub_dev_we_001"
  }

variable "kubernetes_cluster_name" {
    type = string
    description = "Cluster Name"
    default = "aks-JHubDemo_dev_we_001"
  }

variable "DNS_Prefix" {
      type = string
      description = "DNS Prefix for cluster access"
      default = "demoaksjhub001"
    
  }
