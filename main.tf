terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "codepipeline-us-east-1-330520067239"  # Tu bucket de S3
    key    = "terraform/state"  # Ruta dentro del bucket para almacenar el estado
    region = "us-east-1"        # Región del bucket
  }
}

provider "aws" {
  region = "us-east-1"
}

