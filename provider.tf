terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "0.11.43"
    }
    azurerm = {
      version = "4.26.0"
    }
  }

  backend "azurerm" {
    # Azure Storage Account Details
    resource_group_name  = "arch-xc-ce-training"
    storage_account_name = "archxccetraining"
    # No need to change these values:
    container_name       = "terraform-git-actions"
    key                  = "terraform.tfstate"
    use_oidc = true
  }
}

provider "volterra" {
  url          = local.api_url
  api_p12_file = var.api_p12_file
}

provider "azurerm" {
  features {}
  client_id       = var.AZURE_CLIENT_ID
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  tenant_id       = var.AZURE_TENANT_ID
  client_secret   = var.AZURE_CLIENT_SECRET
}