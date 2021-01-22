terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
}

data "terraform_remote_state" "cluster" {
  backend = "local"

  config = {
    path = "../<directory-here>/terraform.tfstate"
  }
}

provider "kubernetes" {}
