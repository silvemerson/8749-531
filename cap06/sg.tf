resource "google_compute_firewall" "allow_http_terraform" {
    name    = "allow-http-terraform"
    network = "default"
    
    allow {
        protocol = "tcp"
        ports    = ["80"]
    }

    source_ranges = ["0.0.0.0/0"]

}