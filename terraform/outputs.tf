output "instance_public_ip" {
  description = "Dirección IP pública de la instancia"
  value       = aws_instance.example.public_ip
}
