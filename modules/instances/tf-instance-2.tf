resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  network_interface {
    network = var.network_interface_network
    access_config {
    }
  }

  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}