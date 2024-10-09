resource "tfe_workspace" "aws_terraform_ci" {
  name       = "aws_terraform-ci"
  project_id = tfe_project.main.id
}

resource "tfe_workspace_settings" "aws_terraform_ci" {
  workspace_id   = tfe_workspace.aws_terraform_ci.id
  execution_mode = "local"
}
