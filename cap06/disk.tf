resource "google_compute_disk" "disco-aux" {
    count = 5
    name = "disco-aux-${count.index + 1}"
    zone = "us-central1-b"
    size = 12
    type = "pd-standard"
  
}

