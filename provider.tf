terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17.0"
    }
  }
}

provider "aws" {
  region = var.region_name

  default_tags {
    tags = {
      "Application" = "EKS-Cluster"
      "Tool"        = "Terragrunt-managed-resource"
    }
  }
}