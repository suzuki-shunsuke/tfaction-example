terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "<S3 Bucket Name>"
    key    = "%%TARGET%%/v1/terraform.tfstate"
    region = "us-east-1" # CHANGEME Fix the region if necessary
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = "suzuki-shunsuke" # CHANGEME Fix owner
}
