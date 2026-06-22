terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
   }
  # Con esta configuración, Terraform guardará el .tfstate en la nube de Azure
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-prod" # El grupo que creamos en el Paso 1
    storage_account_name = "remotestatetest00"          # El nombre de tu Storage Account
    container_name       = "tfstate"                  # El nombre del contenedor
    key                  = "laboratorio.tfstate"       # El nombre físico que tendrá el archivo de estado
  }
}

provider "azurerm" {
  features {}
}
