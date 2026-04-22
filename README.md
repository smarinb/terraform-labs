# 🏗️ terraform-labs

![Terraform Validate](https://github.com/smarinb/terraform-labs/actions/workflows/terraform-validate.yml/badge.svg)
![Terraform Format](https://github.com/smarinb/terraform-labs/actions/workflows/terraform-validate.yml/badge.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Terraform](https://img.shields.io/badge/terraform-%3E%3D1.0-blueviolet)

> Prácticas del curso de Terraform — desde recursos básicos hasta módulos avanzados.

---

## 📋 Descripción

Este repositorio contiene los labs y ejercicios prácticos del curso de Terraform,
organizados por nivel de complejidad con buenas prácticas de DevOps desde el inicio.

## 🗂️ Estructura del Repositorio

```
terraform-labs/
├── .github/
│   └── workflows/          # GitHub Actions (CI automático)
├── labs/
│   ├── lab-01-recursos-basicos/
│   ├── lab-02-variables-outputs/
│   ├── lab-03-providers/
│   ├── lab-04-modulos/
│   └── lab-05-state/
├── modules/                # Módulos reutilizables
├── docs/                   # Documentación adicional
├── scripts/                # Scripts de utilidad
├── new-lab.sh              # Script para crear nuevos labs
└── README.md
```

## 🚀 Cómo Usar Este Repositorio

### Pre-requisitos

```bash
# Instalar Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# Verificar instalación
terraform version

# Instalar pre-commit
pip install pre-commit --break-system-packages
pre-commit install
```

### Ejecutar un Lab

```bash
cd labs/lab-01-recursos-basicos
terraform init
terraform plan
terraform apply
terraform destroy   # Siempre limpiar al terminar!
```

### Crear un Nuevo Lab

```bash
./new-lab.sh lab-06-workspaces "Terraform Workspaces"
```

## 📚 Labs

| # | Lab | Temas | Estado |
|---|-----|-------|--------|
| 01 | [Recursos Básicos](labs/lab-01-recursos-basicos/) | resource, provider | 🔄 En progreso |
| 02 | [Variables y Outputs](labs/lab-02-variables-outputs/) | variable, output, locals | ⏳ Pendiente |
| 03 | [Providers](labs/lab-03-providers/) | provider config, versiones | ⏳ Pendiente |
| 04 | [Módulos](labs/lab-04-modulos/) | module, reusabilidad | ⏳ Pendiente |
| 05 | [State](labs/lab-05-state/) | tfstate, remote backend | ⏳ Pendiente |

## 🔧 Herramientas

| Herramienta | Propósito |
|------------|-----------|
| [terraform fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) | Formateo automático de código |
| [terraform validate](https://developer.hashicorp.com/terraform/cli/commands/validate) | Validación de sintaxis |
| [tflint](https://github.com/terraform-linters/tflint) | Linter avanzado |
| [terraform-docs](https://terraform-docs.io/) | Generación automática de docs |
| [pre-commit](https://pre-commit.com/) | Hooks automáticos antes de commitear |

## 📝 Convención de Commits

Este repo usa [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: agrego lab de módulos con VPC y subnets
fix: corrijo variable de tipo en lab-02
docs: actualizo README con instrucciones de tflint
refactor: reorganizo módulo de networking
chore: actualizo versión de provider AWS
```

## 📖 Recursos

- [Documentación oficial de Terraform](https://developer.hashicorp.com/terraform/docs)
- [Terraform Registry](https://registry.terraform.io/)
- [HashiCorp Learn](https://developer.hashicorp.com/terraform/tutorials)

---

<p align="center">
  Hecho con 💙 mientras aprendo DevOps
</p>
