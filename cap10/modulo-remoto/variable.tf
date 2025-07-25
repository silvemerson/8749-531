variable "gcp_project_id" {
  description = "The ID of the GCP project where the resources will be created."
  type        = string
  default     = "gcp-4linux"  
}

variable "default_region" {
    description = "The default region for GCP resources."
    type        = string
    default     = "us-central1"
  
}