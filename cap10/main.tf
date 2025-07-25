module "network" {
  source = "./gcp-network"
  name                    = var.vpc_name
  description             = "Rede VPC criada pelo módulo Terraform"
}

module "firewall" {
  source = "./gcp-firewall"
  name   = var.fw_name
  network = var.vpc_name
  source_ranges = var.source_ranges
  depends_on = [ module.network ]
  
}