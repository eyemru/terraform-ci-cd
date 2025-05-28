variable "okta_org_name" {
  description = "Okta org name (subdomain)"
  type        = string
}

variable "okta_base_url" {
  description = "Okta base URL (e.g., okta.com, oktapreview.com)"
  type        = string
  default     = "okta.com"
}

variable "okta_api_token" {
  description = "Okta API token"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Target environment (dev, staging, prod)"
  type        = string
}
