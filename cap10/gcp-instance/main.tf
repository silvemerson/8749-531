resource "google_compute_instance" "this" {
    name         = var.name
    machine_type = var.machine_type
    zone         = var.zone
    
    boot_disk {
        initialize_params {
        image = var.image
        type  = var.type_disk
        size  = var.size
        }
    }

    allow_stopping_for_update = var.allow_stopping_for_update

    metadata = {
        ssh-keys = "ssh_user:${file("${var.ssh_keys}")}"
    }
    
    network_interface {
        network = var.network
        subnetwork = var.subnetwork
        access_config {
        // Ephemeral IP
        }
    }
  
}