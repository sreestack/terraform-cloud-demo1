# Terraform Block
terraform {
  required_version = "~> v1.1.8" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }



  backend "remote" {
    organization = "veejee"

    workspaces {
     name = "terraform-cloud-demo2"
    }
  }

}

# Provider Block
provider "aws" {
  region  = var.aws_region
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
