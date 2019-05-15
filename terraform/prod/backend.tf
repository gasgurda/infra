terraform {
  backend "gcs" {
    bucket  = "gcp-terraform"
    prefix  = "reddit-app/prod"
  }
}
