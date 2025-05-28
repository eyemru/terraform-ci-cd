resource "okta_policy_signon" "demo" {
  name        = "Demo Sign-On Policy"
  status      = "ACTIVE"
  description = "Sign-on policy for demo users."
  priority    = 1
  groups_included = [okta_group.ci_cd_test.id]
}

resource "okta_policy_rule_signon" "demo" {
  name      = "Demo Sign-On Rule"
  policy_id = okta_policy_signon.demo.id
  status    = "ACTIVE"
  priority  = 1
  network_connection = "ANYWHERE"
  actions {
    signon {
      access = "ALLOW"
      require_factor = false
      session = {
        use_persistent_cookie = false
        max_session_idle_minutes = 120
        max_session_lifetime_minutes = 480
      }
    }
  }
}
