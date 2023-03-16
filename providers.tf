terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    kubernetes = {
        source = "hashicorp/kubernetes"
        version = ">= 1.15.0"
    }
  }

  required_version = ">= 1.1.0"

}



provider "azurerm" {
  features {}
}


provider "kubernetes" {
  features {}
}
