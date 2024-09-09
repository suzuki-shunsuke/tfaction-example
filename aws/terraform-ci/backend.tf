terraform {
  # CHANGEME: Uncomment the following block to enable remote backend
  backend "s3" {
    bucket = "tmp-hands-on-terraform-state-20240709080311470100000001"
    key    = "aws/terraform-ci/v1/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
