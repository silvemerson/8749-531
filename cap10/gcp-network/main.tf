resource "google_compute_network" "name" {
  name                    = var.name
  description             = var.description
  auto_create_subnetworks = var.auto_create_subnetworks
}