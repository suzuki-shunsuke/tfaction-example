terraform {
  cloud {
    organization = "suzuki-shunsuke"
    workspaces {
      name = "github_foo"
    }
  }
}
