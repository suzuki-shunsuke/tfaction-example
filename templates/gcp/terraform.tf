terraform {
  cloud {
    organization = "<ORGANIZATION_NAME>"

    workspaces {
      name = "<WORKSPACE_NAME>"
      project = "<PROJECT_NAME>"
    }
  }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.6"
}

provider "google" {
  region = "us-central1"
}
