terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Topic = "terraform"
      ## homework:start
      Owner = "Paula"
      ## homework:end
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  ## homework:start
  bucket = "paula-terraform-quickstart-bucket"
  
  ## homework:end
}
