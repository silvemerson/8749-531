variable "name" {
  description = "subnetwork name"
  type        = string
  
}

variable "ip_cidr_range" {
  description = "IP CIDR range for the subnetwork"
  type        = string
  
}

variable "region" {
  description = "Region where the subnetwork will be created"
  type        = string

}

variable "network" {
  description = "VPC network where the subnetwork will be created"
  type        = string

}
