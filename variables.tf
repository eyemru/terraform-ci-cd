variable "okta_org_name" {
  description = "Your Okta org name (e.g., dev-82763613)"
  type        = string
}

variable "okta_base_url" {
  description = "Your Okta base URL (e.g., okta.com)"
  type        = string
}

variable "okta_client_id" {
  description = "Okta OAuth 2.0 Client ID"
  type        = string
}

variable "okta_private_key" {
  description = "Okta OAuth 2.0 PEM Private Key"
  type        = string
  sensitive   = true
}

variable "okta_groups" {
  description = "List of Okta groups to manage in bulk. Each group requires a name and description."
  type = list(object({
    name        = string
    description = string
  }))
  default = []
}