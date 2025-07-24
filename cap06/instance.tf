resource "google_compute_instance" "tf-chapter06-vm" {
    count = 3
    name = "tf-chapter06-vm-${count.index + 1}"
    machine_type = "f1-micro"
    zone = "us-central1-b"
    allow_stopping_for_update = true

    tags = [ "terraform", "linux", "aula03" ]

    metadata_startup_script = <<-EOF
        #!/bin/bash
        apt-get update
        apt-get install -y nginx
        systemctl start nginx
        systemctl enable nginx
    EOF


    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }

    # attached_disk {
    #     source = google_compute_disk.disco-aux.*["${count.index}"].id
    # }

    metadata = {
        ssh-keys = "emerson:${file("~/.ssh/id_rsa.pub")}"
    }

    network_interface {
        network = "default"
        access_config { 
          
        }
    }

    lifecycle {
      prevent_destroy = false
    }
  
}