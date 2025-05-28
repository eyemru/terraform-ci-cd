resource "okta_user" "demo" {
  first_name = "Demo"
  last_name  = "User"
  login      = "demo.user@example.com"
  email      = "demo.user@example.com"
  password {
    value = "TempPassword123!"
  }
  group_memberships = [okta_group.cicd_test.id]
  # Optionally set "activate = false" to provision but not activate
}
