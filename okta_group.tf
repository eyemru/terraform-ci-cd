resource "okta_group" "ci_cd_test_new" {
  name        = "ci-cd-test-group-new"
  description = "Test group for Terraform CI/CD pipeline (new)"
  skip_users  = false
}
