resource "null_resource" "test" {}

terraform {
  required_version = ">= 1.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.3.0"
    }
  }
}

provider "null" {}
