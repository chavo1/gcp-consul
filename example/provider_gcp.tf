terraform {
  required_version = "~> 0.13.0"
}

provider "google" {
  region      = "us-east4"
  project     = "< Your project >"
  credentials = "account.json"
  zone        = "us-east4-a"
}
