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

variable "zone" {
    description = "A zona onde a instância de VM será criada"
    type        = string
    default     = "us-central1-a"
  
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

variable "subnet_name" {
    description = "O nome da sub-rede a ser criada"
    type        = string
    default     = "subnet-modulo-terraform"
  
}

variable "ip_cidr_range" {
    description = "O intervalo CIDR para a sub-rede"
    type        = string
    default     = "192.168.0.0/24"
}

variable "vm_name"{
    description = "O nome da instância de máquina virtual a ser criada"
    type        = string
    default     = "vm-instance-terraform-modulo"
}

variable "machine_type" {
    description = "O tipo de máquina para a instância de VM"
    type        = string
    default     = "f1-micro"
}

variable "allow_stopping_for_update" {
    description = "Permitir parada da instância VM para atualização"
    type        = bool
    default     = true
  
}

variable "image"{
    description = "A imagem a ser usada para a instância de VM"
    type        = string
    default     = "debian-cloud/debian-12"
}

variable "disk_size"{
    description = "A imagem a ser usada para a instância de VM"
    type        = number
    default     = 10
}

variable "type_disk"{
    description = "O tipo de disco a ser usado para a instância de VM"
    type        = string
    default     = "pd-standard"

}

variable "ssh_user" {
    description = "O usuário SSH para a instância de VM"
    type        = string
    default     = "emerson"
}

variable "ssh_keys"{
    description = "O caminho para as chaves SSH públicas"
    type        = string
    default     = "~/.ssh/id_rsa.pub"
}