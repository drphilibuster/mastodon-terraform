terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                = "us-east-1"
  AWS_ACCESS_KEY_ID     = var.mastodon_aws_access_key_id
  AWS_SECRET_ACCESS_KEY = var.mastodon_aws_secret_access_key
}
