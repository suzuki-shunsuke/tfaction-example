terraform {
  cloud {
    organization = "suzuki-shunsuke"

    workspaces {
      name = "tfe_workspaces"
    }
  }
}
