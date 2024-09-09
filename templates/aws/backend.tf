terraform {
  backend "s3" {
    bucket = "tmp-hands-on-terraform-state-20240709080311470100000001"
    key    = "%%TARGET%%/v1/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
