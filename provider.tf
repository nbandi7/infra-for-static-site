provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "infra-for-static-site"
    region         = var.aws_region
    dynamodb_table = "infra-for-static-site-lock"
    key            = "terraform.tfstate"
  }
}