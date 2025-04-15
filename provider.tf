terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "0.11.43"
    }
  }

  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storage_account_name
    container_name       = "terraform-git-actions"
    key                  = "terraform.tfstate"
  }
}

provider "volterra" {
  url          = local.api_url
  api_p12_file = var.api_p12_file
} 