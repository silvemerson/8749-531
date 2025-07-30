module "network" {
  source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-network?ref=v0.1.0"
  name   = format("%s-%s", terraform.workspace, "gcp-network-module")
  auto_create_subnetworks = false
  description = "Network for GCP resources"
}

module "subnetworks" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-subnetwork?ref=v0.1.0"
    name   = format("%s-%s", terraform.workspace, "gcp-subnetworks-module")
    network = format("%s-%s", terraform.workspace, "gcp-network-module")
    region  = var.default_region
    ip_cidr_range = var.ip-cidr-range
    depends_on = [ module.network ]

}

module "fw" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-firewall?ref=v0.1.0"
    name   = format("%s-%s", terraform.workspace, "gcp-firewall-module")
    network = format("%s-%s", terraform.workspace, "gcp-network-module")
    source_ranges = ["0.0.0.0/0"]
    depends_on = [ module.network, module.subnetworks ]

}

module "vm" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-instance?ref=v0.1.0"
    name   = format("%s-%s", terraform.workspace, "gcp-vm-module")
    network = format("%s-%s", terraform.workspace, "gcp-network-module")
    subnetwork = format("%s-%s", terraform.workspace, "gcp-subnetworks-module")
    machine_type = var.machine_type
    image = var.image
    ssh_user = var.ssh_user
    ssh_keys = "~/.ssh/id_rsa.pub"
    type_disk = "pd-standard"
    size = var.size
    zone = var.zone
    allow_stopping_for_update = true
    depends_on = [ module.network, module.subnetworks, module.fw ]
  
}