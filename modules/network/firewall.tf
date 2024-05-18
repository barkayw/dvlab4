resource "google_compute_firewall" "rules" {
  depends_on  = [module.vpc]
  project     = var.project_id
  name        = "tf-firewall"
  network     = module.vpc.network_name
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["all"]
  # source_ranges = ["0.0.0.0/0"]
}