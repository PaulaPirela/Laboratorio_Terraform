terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    ## homework:start
    bucket = "terraforms3backend21-paulapirela-terraform-state"
    key = "ec2/ec2_popolars/terraform.tfstate"
    region = "us-east-1"
    ## homework:end
    # use_lockfile = true
    encrypt    = true
    kms_key_id = "752bf32d-a3a0-4783-95f4-8f479f83a702"
  }
}

provider "aws" {
  ## homework:start
  ## homework:end
  region = "us-east-1"

  default_tags {
    tags = {
      Topic = "terraform"
      ## homework:start
      ## homework:end
    }
  }
}
