resource "github_issue_label" "foo" {
  repository  = "tfaction-example"
  name        = "foo"
  color       = "FF0000"
  description = "foo"
}
