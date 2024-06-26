terraform {
  backend "gcs" {
    bucket = "dev-01-us-central1-geo-tf-state"
    prefix = "terraform/main"
  }
  required_version = ">= 1.8.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.30.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.1"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}
