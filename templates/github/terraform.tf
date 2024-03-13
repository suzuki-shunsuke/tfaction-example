terraform {
  required_version = ">= 1.0"
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "suzuki-shunsuke" # CHANGEME Fix owner
}
