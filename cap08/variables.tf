variable "gcp_project_id" {
    description = "Nome do Projeto da GCP"
    type        = string
    default = "gcp-4linux"
  
}

variable "default_region" {
    description = "Região Padrão do provisionamento"
    type = string
    default = "us-central1"
  
}

variable "vpc_name" {
    description = "Noma da VPC"
    type = string
    default = "vpc-network"
  
}

variable "zone" {
    description = "Zona onde os recursos serão criados"
    type = string
    default = "us-central1-a"
  
}

variable "bool_auto_create_subnetworks" {
    description = "Habilita a criação automática de sub-redes"
    type        = bool
    default     = false
  
}

variable "subnet_name" {
    description = "Nome da nossa subnet"
    type = string
    default = "subnet-01"
  
}

variable "subnet_range" {
    description = "Faixa de IP da sub-rede"
    type = string
    default = "192.168.0.0/24"

}

variable "disk_name" {
    description = "Nome do disco de backup"
    type = string
    default = "vm-disco-backup"
  
}

variable "type_disk"{
    description = "Tipo do disco"
    type = string
    default = "pd-standard"
}


variable "disk_size"{
    description = "Tamanho do disco em GB"
    type = number
    default = 10
}