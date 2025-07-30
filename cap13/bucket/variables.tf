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

variable "bucket-name" {
    description = "The name of the Google Cloud Storage bucket."
    type        = string
    default     = "tfstate-8749-531"
  
}
