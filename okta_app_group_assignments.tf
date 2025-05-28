resource "okta_app_group_assignments" "demo_saml_app_group" {
  app_id = okta_app_saml.demo.id

  group {
    id = data.okta_group.ci_cd_test_new.id
  }
}
