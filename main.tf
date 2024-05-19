terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.29.0"
    }
  }

  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }

  #   backend "gcs" {
  #    bucket  = "var.project_id" # -> need to insert
  #    prefix  = "terraform/state"
  #  }
}



provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}


module "instances" {
  source                    = "./modules/instances"
  project_id                = var.project_id
  region                    = var.region
  zone                      = var.zone
  machine_type              = var.machine_type
  boot_disk_image           = var.boot_disk_image
  network_interface_network = var.network_interface_network

}

#module "google_storage_bucket" {
#    source = "./modules/storage"
#    project_id = var.project_id
#    region = var.region
#    zone = var.zone
#}
#
#module "network" {
#    source = "./modules/network"
#    project_id = var.project_id
#    region = var.region
#    zone = var.zone
#  
#}

