resource "google_compute_network" "tf-chapter5-vpc-network" {
  name = "tf-chapter5-vpc-network"
  auto_create_subnetworks = true
}