# Proxmox Terraform Provisioning

This directory contains the Terraform configuration to provision Proxmox Virtual Machines for the K3s cluster.

## Architecture

- **Control Plane VM**: `crypto-pixzl-control`
- **Worker VM**: `crypto-pixzl-worker`

## Files

- `main.tf`: Main infrastructure definition for the VMs.
- `providers.tf`: Provider configuration for Proxmox.
- `variables.tf`: Variable definitions for configuration like cores, memory, and SSH keys.
- `outputs.tf`: Outputs for the provisioned infrastructure such as IP addresses.

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```
2. Review the plan:
   ```bash
   terraform plan
   ```
3. Apply the configuration:
   ```bash
   terraform apply
   ```
