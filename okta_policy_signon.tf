resource "okta_policy_signon" "demo" {
  name        = "Demo Sign-On Policy"
  status      = "ACTIVE"
  description = "Sign-on policy for test group."
  priority    = 1
  groups_included = [okta_group.ci_cd_test.id]
}

resource "okta_policy_rule_signon" "demo" {
  name      = "Demo Sign-On Rule"
  policy_id = okta_policy_signon.demo.id
  status    = "ACTIVE"
  priority  = 1
  network_connection = "ANYWHERE"
}
