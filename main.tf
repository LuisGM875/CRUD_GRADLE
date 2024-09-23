terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "codepipeline-us-east-1-330520067239"
    key            = "terraform/state"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

