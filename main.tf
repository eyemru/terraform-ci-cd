terraform {
  backend "s3" {
    bucket         = var.tf_state_bucket      # S3 bucket name
    key            = var.tf_state_key         # Path to state file (e.g. env/terraform.tfstate)
    region         = var.tf_state_region      # AWS region
    dynamodb_table = var.tf_state_lock_table  # DynamoDB table for state locking
    encrypt        = true
  }
  required_providers {
    okta = {
      source  = "okta/okta"
      version = ">= 3.41.0"
    }
  }
}

provider "okta" {
  org_name  = var.okta_org_name
  base_url  = var.okta_base_url
  api_token = var.okta_api_token
}

module "environment" {
  source = "./environments/${var.environment}"
}
