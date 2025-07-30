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


