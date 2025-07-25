module "network" {
  source = "./gcp-network"
  name                    = var.vpc_name
  description             = "Rede VPC criada pelo módulo Terraform"
}

module "subnetwork" {
  source = "./gcp-subnetwork"
  name   = var.subnet_name
  network = var.vpc_name
  region = var.default_region
  ip_cidr_range = var.ip_cidr_range
  depends_on = [ module.network ]
}

module "firewall" {
  source = "./gcp-firewall"
  name   = var.fw_name
  network = var.vpc_name
  source_ranges = var.source_ranges
  depends_on = [ module.network ]
  
}

module "vm" {
  source = "./gcp-instance"
  name = var.vm_name
  machine_type = var.machine_type
  allow_stopping_for_update = var.allow_stopping_for_update
  image = var.image
  size = var.disk_size
  type_disk = var.type_disk
  network = var.vpc_name
  zone = var.zone
  subnetwork = var.subnet_name
  ssh_keys = var.ssh_keys
  ssh_user = var.ssh_user
  
  depends_on = [ module.network, module.subnetwork, module.firewall ]
  
}