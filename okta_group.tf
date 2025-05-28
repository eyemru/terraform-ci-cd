resource "okta_group" "ci_cd_test" {
  name        = "ci-cd-test-group"
  description = "Test group for Terraform CI/CD pipeline"
}
