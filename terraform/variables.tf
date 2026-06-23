variable "ssh_public_key" {
  type        = string
  description = "Contenido de la llave pública SSH para la máquina virtual"
  default     = "" # Lo dejamos vacío por defecto
}
