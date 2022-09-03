terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.13"
    }
  }

  backend "local" {
    path = "tmp/terraform.tfstate"
  }
}

provider "kubernetes" {
  host = var.cluster_ip
}
