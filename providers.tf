terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.14.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {

  project = "hackathon-6aso-grupo-08"
  region  = "us-central1"
  zone    = "us-central1-a"
}

provider "google-beta" {
  project = "hackathon-6aso-grupo-08"
  region  = "us-central1"
  zone    = "us-central1-a"
}