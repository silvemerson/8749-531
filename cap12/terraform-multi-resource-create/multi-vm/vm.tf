resource "google_compute_instance" "vm_instance_01" {
    name = "vm-instance-01"
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

resource "google_compute_instance" "vm_instance_02" {
    name = "vm-instance-02"
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

resource "google_compute_instance" "vm_instance_03" {
    name = "vm-instance-03"
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

resource "google_compute_instance" "vm_instance_04" {
    name = "vm-instance-04"
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

