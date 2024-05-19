resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  network_interface {
    network = var.network_interface_network
#    network = "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/global/networks/vpc-name"
#    subnetwork                  = "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/regions/us-central1/subnetworks/subnet-01"
    access_config {
    }
  }

  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}