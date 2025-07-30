variable "gcp_project_id" {
    description = "The Google Cloud project ID to use for resources."
    type        = string
    default = "gcp-4linux"
  
}

variable "default_region" {
    description = "The default region for Google Cloud resources."
    type        = string
  
}

variable "zone"{
    description = "The zone for Google Cloud resources."
    type        = string
}

# variable "ssh_user" {
#     description = "The SSH user for VM instances."
#     type        = string
#     default     = "emerson"  
# }

# variable "ip-cidr-range" {
#     description = "The CIDR range for the subnetwork."
#     type        = string
  
# }

# variable "machine_type" {
#     description = "The machine type for VM instances."
#     type        = string
# }

# variable "image" {
#     description = "The image to use for VM instances."
#     type        = string

# }

# variable "size" {
#     description = "The size of the disk for VM instances in GB."
#     type        = number
  
# }