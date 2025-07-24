
resource "google_compute_instance_template" "tf-chapter5-template" {
  name        = "tf-chapter5-template"
  description = "This template is used to create app server instances."

  labels = {
    environment = "dev"
  }

  instance_description = "description assigned to instances"
  machine_type         = "f1-micro"
  can_ip_forward       = false

  scheduling {
    automatic_restart   = false
    on_host_maintenance = "MIGRATE"
  }

  // Create a new boot disk from an image
  disk {
    source_image      = "debian-cloud/debian-12"
    auto_delete       = true
    boot              = true
  }

  // Use an existing disk resource
  disk {
    // Instance Templates reference disks by name, not self link
    source      = google_compute_disk.foobar.name
    auto_delete = false
    boot        = false
  }

  network_interface {
    network = "default"
  }

}


resource "google_compute_disk" "foobar" {
  name  = "existing-disk"
  image = data.google_compute_image.my_image.self_link
  size  = 10
  type  = "pd-ssd"
  zone  = "us-central1-a"
}

data "google_compute_image" "my_image" {
  family  = "debian-12"
  project = "debian-cloud"
}