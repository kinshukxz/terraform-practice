terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
  backend "local" {}

  # backend "s3" {
  #   bucket = "kinshuk-remote-bucket"
  #   key= "terraform.tfstate"
  #   region = "us-east-1"
  #   dynamodb_table = "kinshuk-remote-dynamodb-table"

  # }
}


