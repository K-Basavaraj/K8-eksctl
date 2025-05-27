terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "s3-remote-state1"
    key    = "k8-eksctl"
    region = "us-east-1"
    dynamodb_table = "eks-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}