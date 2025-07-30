variable "gcp_project_id" {
    description = "The Google Cloud project ID to use for resources."
    type        = string
    default = "gcp-4linux"
  
}

variable "default_region" {
    description = "The default region for Google Cloud resources."
    type        = string
    default = "us-central1"
  
}

# variable "ip-cidr-range" {
#     description = "The CIDR range for the subnet."
#     type        = string

  
# }

# variable "bucket-name" {
#     description = "The name of the Google Cloud Storage bucket."
#     type        = string
#     default     = "tfstate-8749-531"
  
# }

# variable "terraform-state-path" {
#     description = "The path within the bucket where Terraform state files are stored."
#     type        = string
#     default     = "terraform/state"
  
# }