resource "google_compute_firewall" "sg-vars-labs" {
    name = var.fw_name
    network = google_compute_network.vpc_network.name

    allow {
        protocol = "tcp"
        ports    = var.allow_rules
    }

    source_ranges = var.source_ranges
  
}