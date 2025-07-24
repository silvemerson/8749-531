resource "google_compute_network" "tf-chapter5-vpc-network" {
  name = "tf-chapter5-vpc-network"
  auto_create_subnetworks = false
  description = "VPC network for Chapter 5 of Terraform GCP course"
}

resource "google_compute_subnetwork" "tf-chapter5-vpc-subnetwork-us" {
  name          = "tf-chapter5-vpc-subnetwork-us"
  ip_cidr_range = "10.10.10.0/24"
  region       = "us-central1"
  network      = google_compute_network.tf-chapter5-vpc-network.name
  description = "Subnetwork in us-central1 for Chapter 5 of Terraform GCP course"
}

resource "google_compute_subnetwork" "tf-chapter5-vpc-subnetwork" {
  name          = "tf-chapter5-vpc-subnetwork-asia"
  ip_cidr_range = "10.20.20.0/24"
  region       = "asia-east1"
  network      = google_compute_network.tf-chapter5-vpc-network.name
  description = "Subnetwork in asia-east1 for Chapter 5 of Terraform GCP course"
}