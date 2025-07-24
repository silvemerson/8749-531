resource "google_compute_instance" "vm" {
    name         = "vm-ip-static"
    machine_type = "f1-micro"
    zone         = "us-central1-a"
    
    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-12"
        }
    }
    
    network_interface {
        network = "default"
        access_config {
            nat_ip = google_compute_address.static_ip.address
        }
    }

    depends_on = [ google_compute_address.static_ip ]
    
  
}