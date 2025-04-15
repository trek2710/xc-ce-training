terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "0.11.43"
    }
  }

  backend "azurerm" {

# Azure Storage Account Details
    resource_group_name  = "arch-xc-ce-training"
    storage_account_name = "archxccetraining"
    container_name       = "terraform-git-actions"
    key                  = "terraform.tfstate"
  }
}

provider "volterra" {
  url          = local.api_url
  api_p12_file = var.api_p12_file
} 