resource "google_storage_bucket" "tfstate-bucket" {
    name = var.bucket-name
    location = var.default_region
    force_destroy = true
}