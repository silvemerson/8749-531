variable "gcp_project_id" {
    description = "O ID do projeto do Google Cloud onde os recursos serão criados"
    type        = string
    default = "gcp-4linux"
  
}

variable "default_region" {
    description = "A região padrão onde os recursos serão criados"
    type        = string
    default     = "us-central1"
  
}

variable "vpc_name" {
    description = "O nome da VPC a ser criada"
    type        = string
    default     = "vpc-modulo-terraform"
  
}

variable "fw_name" {
    description = "O nome da regra de firewall a ser criada"
    type        = string
    default     = "firewall-modulo-terraform"
  
}

variable "source_ranges" {
    description = "As faixas de IPs de origem permitidas para a regra de firewall"
    type        = list(string)
    default     = ["0.0.0.0/0"]

}