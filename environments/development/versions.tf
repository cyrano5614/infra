terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.30"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 2.2"
    }
    google-beta = {
      source = "hashicorp/google-beta"
      version = "~> 3.38"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 2.1"
    }
  }
}
