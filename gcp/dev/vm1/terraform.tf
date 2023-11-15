terraform {
  cloud {
    organization = "codimite"

    workspaces {
      name = "test-vm1-tfactions"
    }
  }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.6"
}

provider "google" {
  region = "us-central1"
}
