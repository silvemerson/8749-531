locals {
  vm_configs = {
    dev = {
        "dev-nginx" = "e2-small"
        "dev-mysql" = "e2-medium"

    }
    prod = {
        "prod-nginx" = "e2-medium"
        "prod-mysql" = "f1-micro"

    }
  }
}

resource "google_compute_instance" "vm_for_each" {
    for_each = lookup(local.vm_configs, terraform.workspace, {})
    name     = "vm-${each.key}"
    machine_type = each.value
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

