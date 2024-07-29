terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.113.0"
    }
  }
  backend "s3" {
    bucket = "bruno-terraform-state"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = var.location_aws
  default_tags {
    tags = {
      owner      = "Bruno_Aragao"
      managed-by = "terraform"
    }
  }
}
provider "azurerm" {
  features {}
}