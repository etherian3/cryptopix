# Ansible Configuration for K3s & MetalLB

This directory contains the Ansible inventory and playbook used to configure the provisioned virtual machines into a functional K3s Kubernetes cluster.

## Features

- Updates system packages and configures hostnames.
- Installs K3s Control Plane on the Master node.
- Installs K3s Agent on the Worker node and joins it to the cluster.
- Installs and configures MetalLB for network load balancing.

## Files

- `inventory`: Defines the IP addresses of the `masters` and `workers` groups, along with SSH connection details.
- `playbook.yml`: The main playbook containing all the automation tasks.

## Usage

Ensure you have the correct SSH keys set up, then run the playbook against the inventory:

```bash
ansible-playbook -i inventory playbook.yml
```
