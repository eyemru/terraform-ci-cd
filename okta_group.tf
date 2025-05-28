data "okta_group" "ci_cd_test_new" {
  id = "00goxei7v5F9AqMxP5d7"
}

resource "okta_group" "managed" {
  for_each    = { for group in var.okta_groups : group.name => group }
  name        = each.value.name
  description = each.value.description
}
