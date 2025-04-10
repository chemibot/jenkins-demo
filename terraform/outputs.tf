output "ec2_public_ip" {
  description = "La IP pública de la instancia EC2 creada por Terraform"
  value       = aws_instance.jenkins.public_ip
}