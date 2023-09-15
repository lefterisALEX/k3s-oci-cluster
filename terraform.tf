terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.64.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/k3s-at-home-config.yml"
  config_context = "k3s-at-home"
}

provider "helm" {

  kubernetes {
    config_path    = "~/.kube/k3s-at-home-config.yml"
    config_context = "k3s-at-home"
  }
}
