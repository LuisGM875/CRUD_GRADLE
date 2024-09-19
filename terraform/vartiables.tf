# Definir la variable para el tipo de instancia
variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t2.micro"
}

# Definir la variable para la región
variable "region" {
  description = "Región de AWS"
  default     = "us-east-1"
}
