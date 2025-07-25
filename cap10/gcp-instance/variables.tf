variable "name" {
    description = "Nome da instancia VM"
    type = string

}

variable "machine_type" {
    description = "Tipo de máquina da instancia VM"
    type = string
}

variable "allow_stopping_for_update" {
    description = "Permitir parada da instancia VM para atualização"
    type = bool
}

variable "image" {
    description = "Imagem a ser usada para a instancia VM"
    type = string
  
}

variable "size" {
    description = "Tamanho do disco em GB"
    type = number
    default = 10 // Tamanho padrão do disco
  
}

variable "type_disk" {
    description = "Tipo de disco a ser usado para a instancia VM"
    type = string
    default = "pd-standard" // Tipo de disco padrão
}


variable "network" {
    description = "Rede VPC onde a instancia VM será criada"
    type = string
  
}

variable "zone" {
    description = "Zona onde a instancia VM será criada"
    type = string
}

variable "subnetwork" {
    description = "Sub-rede onde a instancia VM será criada"
    type = string
  
}

variable "ssh_keys" {
    description = "Chaves SSH para acesso à instancia VM"
    type = string
  
}

variable "ssh_user" {
    description = "Usuário SSH para acesso à instancia VM"
    type = string
}