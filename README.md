# Jenkins Demo con Terraform y EC2

Este proyecto lanza una instancia EC2 con Jenkins ya instalado, usando Terraform.

## 🚀 Cómo usar

1. Entra en la carpeta `terraform/`
2. Modifica `main.tf` y cambia `key_name` por el nombre de tu clave SSH.
3. Ejecuta:

```bash
terraform init
terraform apply
```

4. Espera ~2 minutos.
5. Entra en `http://<EC2_PUBLIC_IP>:8080`
6. Saca el password con:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

7. En Jenkins:
   - Completa la instalación
   - Crea un pipeline freestyle o multibranch
   - Usa este repo como origen

## 🎯 Jenkinsfile demo

El pipeline simplemente ejecuta un script que dice "Hola desde Jenkins".
