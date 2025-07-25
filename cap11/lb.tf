module "modulo-lb-tf-cap11" {
    source = "GoogleCloudPlatform/lb/google"
    name = "cap11-lb"
    version = "2.2.0"
    region     = var.default_region
    network    = module.network-cap11.network_name
    service_port = 80
    target_tags = ["cap11-web"]
}