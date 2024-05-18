
# allow_stopping_for_update = true

# terraform import google_compute_instance.instance projects/playground-s-11-6ee79f70/zones/us-central1-a/instances/instance-2


resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = "e2-standard-2"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "e2-standard-2"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT

  allow_stopping_for_update = true
}


#resource "google_compute_instance" "tf-instance-3" {
#  name         = "tf-instance-3"
#  machine_type = "e2-standard-2"
#  zone         = var.zone
#
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-11"
#    }
#  }
#
#
#  network_interface {
#    network = "default"
#    access_config {
#    }
#  }
#
#  metadata_startup_script = <<-EOT
#        #!/bin/bash
#    EOT
#
#  allow_stopping_for_update = true
#}