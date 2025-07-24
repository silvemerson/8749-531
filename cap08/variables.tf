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
    default = "us-central1-c"
  
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

variable "disk_name_bkp" {
    description = "Nome do disco de backup"
    type = string
    default = "vm-disco-backup"
  
}

variable "type_disk"{
    description = "Tipo do disco"
    type = string
    default = "pd-standard"
}


variable "disk_size_bkp"{
    description = "Tamanho do disco em GB"
    type = number
    default = 10
}

variable "fw_name" {
    description = "Nome da regra de firewall"
    type = string
    default = "sg-vars-labs"
  
}


variable "allow_rules" {
    description = "Regras de permissão para o firewall"
    type = list(string)
    default = ["22", "80"]
  
}

variable "source_ranges" {
    description = "Faixas de IP permitidas para o firewall"
    type = list(string)
    default = ["177.8.162.67/32"]
}

variable "vm_name"{
    description = "Nome da instância de máquina virtual"
    type = string
    default = "servidor-web"
}

variable "machine_type" {
    description = "Tipo de máquina para a instância"
    type = string
    default = "e2-medium"
  
}

variable "vm_allow_stopping_for_update" {
    description = "Permite parar a VM para atualizações"
    type = bool
    default = true
  
}

variable "vm_image" {
    description = "Imagem do sistema operacional para a VM"
    type = string
    default = "debian-cloud/debian-12"
  
}

variable "vm_disk_size" {
    description = "Tamanho do disco da VM em GB"
    type = number
    default = 10
}

variable "ssh_keys_private" {
    description = "Chaves SSH para acesso à VM"
    type = string
    default = "~/.ssh/id_rsa"
  
}

variable "ssh_keys_public" {
    description = "Chaves SSH para acesso à VM"
    type = string
    default = "~/.ssh/id_rsa.pub"
  
}

variable "user_ssh" {
    description = "usuario ssh"
    type = string
    default = "emerson"
  
}