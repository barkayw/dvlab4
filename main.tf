terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.29.0"
    }
  }
 #   backend "local" {
 #   path = "terraform/state/terraform.tfstate"
 # }
    backend "gcs" {
    bucket  = var.project_id
    prefix  = "terraform/state"
  }
}



provider "google" {
  project     = "playground-s-11-6ee79f70"
  region      = "us-central1"  
   zone        = "us-central1-a"
}
#resource "google_compute_network" "vpc_network" {
#  name = "terraform-network"
#}

module "test-vpc-module" {
    source = "./modules/instances"
    project_id = var.project_id
    region = var.region
    zone = var.zone
}



module "google_storage_bucket" {
    source = "./modules/storage"
    project_id = var.project_id
    region = var.region
    zone = var.zone
}

module "network" {
    source = "./modules/network"
    project_id = var.project_id
    region = var.region
    zone = var.zone
  
}