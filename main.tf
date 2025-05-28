terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = ">= 4.0.0"
    }
  }
}

provider "okta" {
  org_name    = var.okta_org_name
  base_url    = var.okta_base_url
  client_id   = var.okta_client_id
  private_key = var.okta_private_key
  scopes      = ["okta.groups.manage", "okta.apps.manage"]
}

# Root-level resources only (e.g., okta_group.tf)
