resource "google_compute_instance" "vm_count" {
    count = var.count_instances
    name = "vm-count-${count.index + 1}"
    machine_type = "f1-micro"
    zone = var.zone
    allow_stopping_for_update = true

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
            size  = 10
        }
    }

    network_interface {
        network = "default"
        access_config {
            // Ephemeral IP
        }
    }
  
}

