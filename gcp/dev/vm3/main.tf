resource "random_string" "random" {
  length           = var.length
  special          = true
  override_special = "/@£$"
}




