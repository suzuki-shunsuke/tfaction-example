terraform {
  cloud {
    organization = "suzuki-shunsuke"
    workspaces {
      name = "aws_terraform-ci"
    }
  }
}
