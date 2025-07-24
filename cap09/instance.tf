resource "google_compute_instance" "vm" {
    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.vm_allow_stopping_for_update

    boot_disk {
        initialize_params {
            image = var.vm_image
            size  = var.vm_disk_size
            type  = var.type_disk
        }
    }

    attached_disk {
        source = google_compute_disk.vm-disco-backup.id
    }

    network_interface {
        network = var.vpc_name
        subnetwork = var.subnet_name
        access_config {
            // Ephemeral IP
        }
    }
    metadata = {
        ssh-keys = "${var.user_ssh}:${file(var.ssh_keys_public)}"
    }
    # metadata_startup_script = file(var.startup_script)
}

resource "null_resource" "install_nginx" {
    depends_on = [google_compute_instance.vm]
    provisioner "remote-exec" {
        inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      <<-EOT
      cat << EOF | sudo tee /var/www/html/index.html
      <!DOCTYPE html>
      <html lang="pt-br">
      <head>
        <meta charset="UTF-8">
        <title>Bem-vindo</title>
        <style>
          body {
            background-color: #282c34;
            color: #61dafb;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
          }
          h1 {
            font-size: 2.5rem;
            text-shadow: 2px 2px #000;
          }
        </style>
      </head>
      <body>
        <h1>Bem-vindo ao curso Terraform 4 Linux 🚀</h1>
      </body>
      </html>
      EOF
      EOT
        ]
        connection {
            type        = "ssh"
            user        = "${var.user_ssh}"
            private_key = file("${var.ssh_keys_private}")
            host        = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
        }
    }
  
}