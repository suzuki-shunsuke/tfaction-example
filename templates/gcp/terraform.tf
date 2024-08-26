terraform {
  required_version = ">= 1.0"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  region = "us-east1"
}
