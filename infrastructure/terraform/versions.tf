terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "ann-mnist-k8s-monitoring"

    workspaces {
      name = "ann-mnist-k8s-monitoring"
    }
  }

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0"
    }
  }
}