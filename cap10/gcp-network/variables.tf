variable "name" {
    description = "Deverá ser adicionado o nome do recurso de rede"
    type        = string
}

variable "description" {
    description = "Coloque uma descrição para o recurso de rede"
    type        = string
  
}

variable "auto_create_subnetworks" {
    description = "Se definido como true, o Google Cloud cria automaticamente sub-redes para a rede. Se definido como false, você deve criar manualmente as sub-redes."
    type        = bool
    default     = true
  
}