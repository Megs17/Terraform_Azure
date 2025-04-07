# Azure Terraform VM Deployment with Docker

## Overview
Terraform project that automates deployment of an Ubuntu 22.04 VM on Azure with Docker pre-installed.

## Prerequisites
- Azure account with active subscription
- Terraform (v1.0+)
- Azure CLI configured
- SSH key pair (replace key.pub)

## Quick Start

1. Clone repo:
git clone https://github.com/Megs17/Terraform_Azure
cd azure-terraform-vm

2. Initialize Terraform:
  terraform init
3. Deploy infrastructure:
  terraform apply
