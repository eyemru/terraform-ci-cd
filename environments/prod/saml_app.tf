resource "okta_app_saml" "sample" {
  label                        = "Sample SAML App (Prod)"
  sso_url                      = "https://prod.example.com/sso"
  recipient                    = "https://prod.example.com/recipient"
  destination                  = "https://prod.example.com/destination"
  audience                     = "https://prod.example.com/audience"
  subject_name_id_template     = "${user.email}"
  response_signed              = true
  assertion_signed             = true
  signature_algorithm          = "RSA_SHA256"
  digest_algorithm             = "SHA256"
  honor_force_authn            = true
  authn_context_class_ref      = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
  saml_assertion_lifetime      = 3600
  request_compressed           = false
  allow_multiple_acs_endpoints = true
  acs_endpoints = [{
    url   = "https://prod.example.com/sso"
    index = 0
  }]
  attribute_statements = [{
    type      = "EXPRESSION"
    name      = "email"
    namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
    values    = ["${user.email}"]
  }]
}
