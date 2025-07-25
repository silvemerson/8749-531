module "vpc"{
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-network?ref=v0.1.0"
    name = "cap10-vpc-modulo"
    auto_create_subnetworks = false
    description = "VPC for Capítulo 10 - GCP"

}

module "subnetworks" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-subnetwork?ref=v0.1.0"
    name = "cap10-subnetworks-modulo"
    network = "cap10-vpc-modulo"
    region = var.default_region
    ip_cidr_range = "192.168.10.0/24"
    depends_on = [ module.vpc  ]

}

module "firewall" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-firewall?ref=v0.1.0"
    name = "cap10-firewall-modulo"
    network = "cap10-vpc-modulo"
    source_ranges = ["0.0.0.0/0"]
    depends_on = [ module.vpc, module.subnetworks ]

}

module "vm" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-instance?ref=v0.1.0"
    name = "cap10-vm-modulo"
    machine_type = "e2-medium"
    zone = "us-central1-a"
    allow_stopping_for_update = true
    image = "debian-cloud/debian-12"
    ssh_user = "emerson"
    ssh_keys = "~/.ssh/id_rsa.pub"
    type_disk = "pd-standard"
    size = "10"
    network = "cap10-vpc-modulo"
    subnetwork = "cap10-subnetworks-modulo"
    depends_on = [ module.vpc, module.subnetworks, module.firewall ]

}