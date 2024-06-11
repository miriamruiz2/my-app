terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  backend "s3" {
    bucket = "mi-tf-bucket"
    dynamodb_table = "state-lock-tfstate-tar"
    key = "terraform/state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}