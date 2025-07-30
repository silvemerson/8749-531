resource "google_compute_instance" "count_workspace" {
    count = contains([
        "dev",
        "hmg",
        "prod"
    ], terraform.workspace) ? 3 : 0

    name     = format("%s-%s", terraform.workspace, "vm-${count.index + 1}")
    machine_type = "e2-medium"
    zone     = var.zone

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

