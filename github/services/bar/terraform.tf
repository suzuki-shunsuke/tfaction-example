terraform {
  required_version = ">= 1.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "<S3 Bucket Name>"
    key    = "github/bar/v1/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "github" {
  owner = "suzuki-shunsuke"
}
