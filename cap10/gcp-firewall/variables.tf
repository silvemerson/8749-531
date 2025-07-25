variable "name" {
    type = string
    description = "O nome da regra de firewall"
  
}

variable "source_ranges" {
    type = list(string)
    description = "As faixas de IPs de origem permitidas"
  
}

variable "allowed" {
    default = {
        protocol = "tcp"
        ports    = ["22", "80", "443"]
    }
  
}

variable "network" {
    type = string
    description = "O nome da rede VPC onde a regra de firewall será aplicada"
  
}