terraform {
  backend "gcs" {
    bucket = "<GCS Bucket Name>"
    prefix = "%%TARGET%%/v1/terraform.tfstate"
    region = "us-east1"
  }
}
