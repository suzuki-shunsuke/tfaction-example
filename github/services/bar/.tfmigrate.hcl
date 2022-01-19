tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "<S3 Bucket Name>"
      key    = "github/bar/history.json"
    }
  }
}
