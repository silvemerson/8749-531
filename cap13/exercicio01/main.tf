resource "google_compute_instance" "default" {
  name         = "docker-host"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {

        image = "debian-cloud/debian-11"
        size  = 10
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }


    metadata = {
        ssh-keys = "emersonr:${file("~/.ssh/id_rsa.pub")}"
    }
}

resource "google_compute_firewall" "docker-fw" {
    name    = "docker-firewall"
    network = "default"

    allow {
        protocol = "tcp"
        ports    = ["22", "8600"]
    }

    source_ranges = ["0.0.0.0/0"]
  
}


resource "null_resource" "docker_app" {
    depends_on = [google_compute_instance.default]
    
    provisioner "remote-exec" {
        inline = [
        "sudo apt-get update",
        "sudo apt-get install -y docker.io",
        "sudo systemctl start docker",
        "sudo systemctl enable docker",
        "sudo docker run -d -p 8600:8080 pengbai/docker-supermario"
        ]
    
        connection {
        type        = "ssh"
        user        = "emersonr"
        private_key = file("~/.ssh/id_rsa")
        host        = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
        }
    }

  
}