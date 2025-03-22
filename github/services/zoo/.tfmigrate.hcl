tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "<S3 Bucket Name for tfmigrate history files>"
      key    = "github/zoo/history.json"
    }
  }
}
