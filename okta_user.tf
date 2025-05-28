resource "okta_user" "demo" {
  first_name = "Demo"
  last_name  = "User"
  login      = "demo.user@example.com"
  email      = "demo.user@example.com"
  password   = "TempPassword123!"
  # Optionally set "activate = false" to provision but not activate
}

resource "okta_user_group_memberships" "demo_user_group" {
  user_id = okta_user.demo.id
  groups  = [okta_group.ci_cd_test.id]
}
