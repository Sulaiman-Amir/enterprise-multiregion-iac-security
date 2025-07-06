# Enterprise Multi-Region AWS Architecture

## Overview
This infrastructure is designed using Terraform and Ansible to support a secure, multi-region AWS deployment with best practices for networking, bastion hosts, and security services.

## Features
- Multi-region VPC architecture
- Public/private subnets
- Bastion host for admin access
- GuardDuty, Inspector, Security Hub enabled
- Encrypted RDS and EC2 volumes with KMS
- Automated configuration with Ansible

## Modules
- **network**: VPCs, subnets, routing
- **security**: security groups, KMS keys, GuardDuty, Inspector
- **bastion**: jump box with hardened setup

## Diagrams
See `docs/diagrams/network-diagram.png` for a visual overview.

