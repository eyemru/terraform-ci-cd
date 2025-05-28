resource "okta_app_saml" "demo" {
  label              = "Demo SAML App"
  sso_url            = "https://example-app.com/sso/saml"
  recipient          = "https://example-app.com/sso/saml/acs"
  destination        = "https://example-app.com/sso/saml/acs"
  audience           = "https://example-app.com/sso/saml/metadata"
  default_relay_state = ""
  subject_name_id_format = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  response_signed    = true
  assertion_signed   = true
  signature_algorithm = "RSA_SHA256"
  digest_algorithm    = "SHA256"
  user_name_template = "demo.user@example.com"
  group_assignments  = [okta_group.ci_cd_test.id]
  # Add more attributes as needed
}
