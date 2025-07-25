module "network-cap11"{
    source = "terraform-google-modules/network/google"
    version = "11.0.0"
    project_id = var.gcp_project_id
    network_name = "cap11-network"
    subnets = [
        {
            subnet_name           = "cap11-subnet"
            subnet_ip             = "10.10.1.0/24"
            subnet_region         = var.default_region
        }
    ]

}