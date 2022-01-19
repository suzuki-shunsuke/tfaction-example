resource "github_issue_label" "bar" {
  repository  = "tfaction-example"
  name        = "bar"
  color       = "FF0000"
  description = "bar"
}
