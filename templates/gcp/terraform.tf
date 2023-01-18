terraform {
  required_version = ">= 1.0"
  backend "gcs" {
    bucket = "<GCS Bucket Name>"
    prefix = "%%TARGET%%/v1/terraform.tfstate"
    region = "us-east1"
  }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  region = "us-east1"
}
