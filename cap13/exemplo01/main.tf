module "vpc" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-network?ref=v0.1.0"
    name = format("vpc-%s-modulo", terraform.workspace)
    auto_create_subnetworks = false
    description = "VPC for 8749-531 example 01"
}

module "subnet" {
    source = "git::https://git@github.com/silvemerson/8749-531.git//cap10/gcp-subnetwork?ref=v0.1.0"
    name   =  format("subnet-%s-modulo", terraform.workspace)
    ip_cidr_range = var.ip-cidr-range
    network = format("vpc-%s-modulo", terraform.workspace)
    region = var.default_region
    depends_on = [ module.vpc ]
  
}