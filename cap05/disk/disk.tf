resource "google_compute_disk" "tf-chapter5-disk" {
  name  = "tf-chapter5-disk"
  type  = "pd-standard"
  zone  = "us-central1-a"
  size  = 50
}