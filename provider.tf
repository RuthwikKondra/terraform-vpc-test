terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "terraform-practise123"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "terraform-locking"

  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}