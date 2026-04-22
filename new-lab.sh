#!/bin/bash
# Uso: ./new-lab.sh lab-06-workspaces "Terraform Workspaces"

LAB_NAME=${1:-"lab-nuevo"}
LAB_TITLE=${2:-"Nuevo Lab"}
LAB_DIR="labs/$LAB_NAME"

if [ -d "$LAB_DIR" ]; then
  echo "❌ El lab '$LAB_DIR' ya existe."
  exit 1
fi

mkdir -p "$LAB_DIR/output"

cat > "$LAB_DIR/main.tf" << EOF
# =============================================================================
# $LAB_TITLE
# =============================================================================

terraform {
  required_version = ">= 1.0"

  required_providers {
    # Agrega el provider que necesites
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

# TODO: Agrega tus recursos aquí
EOF

cat > "$LAB_DIR/variables.tf" << EOF
# Variables del lab: $LAB_TITLE
EOF

cat > "$LAB_DIR/outputs.tf" << EOF
# Outputs del lab: $LAB_TITLE
EOF

cat > "$LAB_DIR/README.md" << EOF
# $LAB_TITLE

## 🎯 Objetivo
<!-- Describe qué aprenderás en este lab -->

## 📁 Archivos
- \`main.tf\` — Recursos principales
- \`variables.tf\` — Variables de entrada
- \`outputs.tf\` — Valores de salida

## 🚀 Cómo ejecutar

\`\`\`bash
terraform init
terraform plan
terraform apply
terraform destroy
\`\`\`

## 💡 Conceptos aprendidos
- [ ] Concepto 1
- [ ] Concepto 2

## 📝 Notas
<!-- Agrega notas, problemas encontrados y soluciones -->
EOF

echo "✅ Lab creado en: $LAB_DIR"
echo "👉 Próximos pasos:"
echo "   cd $LAB_DIR"
echo "   terraform init"
