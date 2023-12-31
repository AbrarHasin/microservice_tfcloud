# Terraform Settings Block
terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.16.0"
    }
  }
}

provider "aws" {
  # region = "ap-northeast-1"
  region = local.region
}