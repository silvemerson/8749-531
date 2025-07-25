resource "google_compute_firewall" "this" {
    name    = var.name
    network = var.network
    
    allow {
        protocol = var.allowed.protocol
        ports    = var.allowed.ports
    }
    
    source_ranges = var.source_ranges
   
  
}