# Azure Terraform Project: Virtual Machine with Docker

![Azure](https://img.shields.io/badge/Cloud-Microsoft%20Azure-blue)
![Terraform](https://img.shields.io/badge/Tool-Terraform-purple)
![License](https://img.shields.io/badge/License-MIT-green)

This Terraform project automates the deployment of a **Linux virtual machine (Ubuntu 22.04 LTS)** on Microsoft Azure with **Docker** pre-installed. It includes networking components, security rules, and a public IP for remote access.

## Table of Contents
- [Features](#features)
- [Architecture Diagram](#architecture-diagram)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Deployment](#deployment)
- [Infrastructure Details](#infrastructure-details)
- [Security](#security)
- [Cost Estimation](#cost-estimation)
- [Troubleshooting](#troubleshooting)
- [Cleanup](#cleanup)
- [Contributing](#contributing)
- [License](#license)

## Features
- **Automated Infrastructure**: Deploys all Azure resources via Terraform.
- **Docker Ready**: Installs Docker CE automatically using cloud-init.
- **SSH Access**: Configured with your public key for secure access.
- **Outputs**: Displays VM name and public IP after deployment.

## Architecture Diagram
```plaintext
+---------------------+
|   Azure Resource    |
|       Group         |
|  (mtc-resources)    |
+----------+----------+
           |
           v
+---------------------+
|   Virtual Network   |
|    (10.0.0.0/16)    |
+----------+----------+
           |
           v
+---------------------+
|      Subnet         |
|     (10.0.1.0/24)   |
+----------+----------+
           |
           v
+---------------------+
|  Network Security   |
|       Group         |
|   (Allow inbound)   |
+----------+----------+
           |
           v
+---------------------+
|   Linux VM (Ubuntu) |
|  +---------------+  |
|  | Docker Engine |  |
|  +---------------+  |
+---------------------+
