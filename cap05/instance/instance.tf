resource "google_compute_instance" "tf-chapter5" {
  name         = "tf-chapter5"
  description  = "Instance criada pelo Terraform"
  machine_type = "f1-micro"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

  }
}