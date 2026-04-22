# =============================================================================
# Lab 01 - Recursos Básicos en Terraform
# =============================================================================
# Propósito: Entender la estructura básica de un archivo .tf
# Provider: hashicorp/local (no requiere credenciales cloud)
# =============================================================================

terraform {
  required_version = ">= 1.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

# Recurso: crea un archivo local
resource "local_file" "mi_primer_recurso" {
  content  = "¡Hola Terraform! Creado el ${var.fecha}"
  filename = "${path.module}/output/hola.txt"
}
